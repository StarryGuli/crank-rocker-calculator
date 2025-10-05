# 四杆机构参数计算器 · Crank–Rocker 4-Bar Calculator

## 🧩 简介 | Introduction
这是一个可交互的 **四杆机构计算器**，用于教学与机械设计辅助。  
用户可以输入部分参数（曲柄 a、连杆 b、摇杆 c、机架 d），系统会自动计算：
- Grashof 条件判别  
- 摇杆摆角（φmax − φmin）  
- 行程速度变化系数 K（快返比）  
- 是否为整周曲柄机构  

This is an **interactive 4-bar linkage calculator** for teaching and mechanical design assistance.  
You can input partial parameters (crank a, coupler b, rocker c, frame d), and the program automatically computes:
- Grashof condition classification  
- Rocker swing angle (φmax − φmin)  
- Quick-return ratio K  
- Full-rotation crank possibility  

---

## ⚙️ 功能特性 | Features
- 自动识别未知参数并生成滑块调整  
- 支持“目标约束”：可根据目标摇杆摆角或 K 值反推未知杆长  
- 动态 SVG 可视化机构运动  
- JSON 输出结果，可复制保存  

- Auto-generate sliders for unknown parameters  
- Support for “target constraints”: back-solve an unknown link using desired swing angle or K  
- Dynamic SVG visualization  
- JSON output for reproducibility  

---

## 🚀 在线演示 | Live Demo
👉 [https://你的用户名.github.io/fourbar-calculator/](https://你的用户名.github.io/fourbar-calculator/)

---

## 📂 文件结构 | File Structure
