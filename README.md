# WattWise — Campus Energy Intelligence Platform

> **Smarter Energy. Less Waste.**  
> *A Swiss-modernist, data-driven web application to eliminate idle electrical waste in college classrooms.*

![WattWise Architecture](https://img.shields.io/badge/Status-Simulation%20Mode-173F35?style=flat-square)
![Firebase](https://img.shields.io/badge/Backend-Firebase%20(wattwise--3b7f7)-orange?style=flat-square)
![CSS3](https://img.shields.io/badge/Styles-Vanilla%20CSS%20Design%20System-A7B9A0?style=flat-square)

---

## ⚡ Overview

**WattWise** helps university facilities, sustainability committees, and engineering faculties track real-time classroom occupancy, detect electrical circuits left powered in empty rooms, compute electricity costs, and model potential utility and carbon savings.

### Integrated Firebase Cloud Backend
- **Project ID**: `wattwise-3b7f7`
- **Auth Domain**: `wattwise-3b7f7.firebaseapp.com`
- **Storage Bucket**: `wattwise-3b7f7.firebasestorage.app`
- **App ID**: `1:740089270370:web:40c8fa2616d0092a83013b`
- **Measurement ID**: `G-44DS6972P0`

Real-time device toggles, classroom telemetry, and alert resolutions are automatically synchronized with Firestore (`campuses/demo-campus/classrooms`).

---

## 🌿 Core Features

1. **Brand Identity & Angular W Vector Mark**:
   - Distinctive geometric lettermark with interlocking **Forest Green** (`#173F35`) stems and an energy-inspired **Sage** (`#A7B9A0`) angle.
2. **Screen A: Editorial Landing Page**:
   - Hero: *"See the waste. Change the outcome."*
   - Interactive live dashboard preview component.
   - 3-metric Impact Strip and 3-step *How It Works* workflow.
3. **Screen B: Campus Overview Dashboard**:
   - 4 Top KPIs: Total Energy (kWh), Estimated Cost (₹), Active Waste Alerts, and Potential Savings.
   - 7-day SVG consumption trend chart with interactive hover tooltips.
   - Academic block power distribution breakdown.
4. **Screen C: Classroom Monitoring Directory**:
   - 18 simulated classrooms across 3 academic blocks (Ramanujan, Turing, Faraday).
   - Building, floor, and waste status filters with Cards / Table view switchers.
   - Interactive Room Detail Modal with live sensor state override buttons.
5. **Screen D: Energy Analytics & "What-If?" Simulator**:
   - Daily load profiling and comparative building bar charts.
   - Live interactive sliders: operating hours, electricity tariff (₹/kWh), and shutdown compliance.
   - Real-time recalculation of projected monthly bills, savings, and CO₂ avoidance.
6. **Screen E: Waste Alert Management**:
   - Active and Resolved alert queues with severity indicators and timestamps.
   - One-click *Resolve Alert* action that turns devices off and updates KPIs.
7. **Screen F: Audit Reports & CSV Export**:
   - Executive printable report sheet (`@media print` support).
   - Functional RFC-compliant CSV export button.

---

## 🚀 Running Locally

1. Open `index.html` directly in any web browser, or start the local server:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\server.ps1
   ```
2. Navigate to:
   ```
   http://127.0.0.1:8080/
   ```

---

## 🔗 Linking with Your GitHub Repository

If you haven't linked this local directory to your GitHub repository yet, run the following commands in your PowerShell or terminal:

```bash
# 1. Initialize git repository
git init

# 2. Stage all project files
git add .

# 3. Create initial commit
git commit -m "feat: complete WattWise campus energy platform with Firebase cloud integration"

# 4. Set main branch
git branch -M main

# 5. Connect to your GitHub repository (replace with your repo URL)
git remote add origin https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>.git

# 6. Push to GitHub
git push -u origin main
```
