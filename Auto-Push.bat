@echo off
setlocal EnableExtensions EnableDelayedExpansion
chcp 65001 >nul

REM ========= 固定日志位置 =========
set "LOGDIR=%~dp0..\push-logs"
set "LOG=%LOGDIR%\push.log"
if not exist "%LOGDIR%" mkdir "%LOGDIR%"
echo === %date% %time% === >> "%LOG%"

REM ========= 基本校验 =========
if not exist ".git" (
  echo [ERROR] 当前目录不是 Git 仓库：%cd%
  pause & exit /b 1
)
git --version >nul 2>&1 || (echo [ERROR] 未检测到 Git & pause & exit /b 1)

REM ========= 当前分支 =========
for /f "delims=" %%b in ('git rev-parse --abbrev-ref HEAD') do set "BR=%%b"
echo [INFO] 当前分支：%BR% >> "%LOG%"

REM ========= 先拉取（rebase+autostash）=========
git pull --rebase --autostash origin "%BR%" >> "%LOG%" 2>&1

REM ========= 纳入所有变更（新增 / 修改 / 删除）=========
git add -A || (echo [ERROR] git add 失败 >> "%LOG%" & pause & exit /b 1)

REM ========= 始终提交（允许空提交）=========
set "MSG=%*"
if "%MSG%"=="" set "MSG=chore: sync %date% %time%"
git commit --allow-empty -m "%MSG%" >> "%LOG%" 2>&1 || (
  echo [ERROR] 提交失败 >> "%LOG%"
  pause & exit /b 1
)

REM ========= 推送 =========
git push origin "%BR%" >> "%LOG%" 2>&1 || (
  echo [WARN] 直接推送失败，尝试设置上游后再推…… >> "%LOG%"
  git push -u origin "%BR%" >> "%LOG%" 2>&1 || (
    echo [ERROR] 推送失败，请检查权限/网络/分支保护。日志：%LOG%
    pause & exit /b 1
  )
)

echo [OK] 推送完成。日志：%LOG%
exit /b 0
