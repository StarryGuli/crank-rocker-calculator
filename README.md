# 曲柄摇杆机构参数计算器 · Crank–Rocker 4-Bar Calculator

🧭 在线访问 | Live Demo：  
👉 [https://starryguli.github.io/crank-rocker-calculator/](https://starryguli.github.io/crank-rocker-calculator/)

---

## 🧩 简介 | Introduction
本项目是一个基于 **HTML + JavaScript + SVG** 的交互式网页工具，  
用于四杆机构（Crank–Rocker 4-Bar Mechanism）的运动分析与几何可视化。  
输入任意三个或四个杆长参数，即可计算：
- **Grashof 条件**（判断是否为整周曲柄机构）  
- **摇杆摆角 φmax−φmin**  
- **行程速度变化系数 K（快返比）**  
- **机构可装配性与死点位置**

This project is an **interactive geometric calculator** for four-bar linkages,  
implemented entirely in HTML, JavaScript, and SVG graphics.  
By entering any combination of link lengths (a, b, c, d), it computes:
- **Grashof condition**
- **Rocker swing angle (φmax−φmin)**
- **Quick-return ratio K**
- **Feasibility and extreme positions**

---

## ⚙️ 功能特性 | Features
| 功能 | 说明 | English |
|------|------|----------|
| 自动识别未知参数 | 未填或为 0 的参数会自动生成滑块调整 | Auto-generate sliders for unknown links |
| 目标约束反推 | 可根据目标摇杆摆角或 K 反求某一未知杆长 | Inverse design via swing/K constraints |
| 动态几何预览 | 实时 SVG 动画显示机构姿态 | Real-time SVG visualization |
| JSON 输出 | 自动生成可复制 JSON 结果 | Export results as JSON |

---

## 🧮 使用说明 | How to Use
1. 打开网页后，输入已知参数（例如 a=30, b=70, c=60, d=90）  
2. 若有未知量留空，系统会自动生成滑块供调整  
3. 点击「计算」按钮  
4. 拖动滑块或 θ 滑条观察机构运动  
5. 结果面板会显示：
   - Grashof 判别结果  
   - 摇杆摆角（°）  
   - 行程速度系数 K  
   - 是否为整周曲柄机构  

Steps in English:
1. Open the webpage and enter known parameters (e.g., a=30, b=70, c=60, d=90).  
2. Leave unknown parameters blank — sliders will be created automatically.  
3. Click **Calculate**.  
4. Drag the sliders or the θ-range bar to visualize motion.  
5. See computed Grashof type, swing angle, and K.

---

## 🧠 数学原理 | Mathematical Basis
- 机构姿态由两圆相交法求解：  
  B 为曲柄端点，C 为连杆与摇杆铰点  
- 极限位满足：  
  `cosθ = (a² + d² − r²) / (2ad)`，其中 `r = b ± c`  
- 行程速度变化系数：  
  `K = 回程角 / 去程角`

The geometry is solved by circle-circle intersection:  
B (crank end) and C (coupler-rocker joint) satisfy |BC|=b and |O₄C|=c.  
The limiting positions occur when the circles are tangent.  
Quick-return ratio K is defined as the ratio of return stroke to forward stroke.

---

## 📂 项目结构 | Project Structure
