# Local Network Diagnostics Utility

This project is a sophisticated web-based network simulation tool designed to demonstrate client-side logic, real-time database synchronization, and responsive UI design. The application renders a realistic terminal interface for managing network configurations, simulating diagnostic scans, and visualizing device states, all integrated with persistent storage.

## ✨ Features

### 🔌 Device Management
- **Custom Configuration**: Easily configure network nodes with custom Names and IP Addresses
- **Smart Generation**: Automatic generation of realistic MAC addresses for every device
- **Persistent Topology**: Secure storage of device configurations via Google Firestore ensures data persists between sessions

### 🔮 Simulation Mechanics
- **Async Diagnostics**: Runs asynchronous "Network Scan" simulations without blocking the UI
- **Latency Simulation**: Mimics real-world network conditions with randomized ping latency
- **Port Scanning Logic**: Simulates checks on common ports (80, 443, 22, etc.) for authentic feedback
- **Real-time Transitions**: Dynamic state updates (Online, Offline, Scanning) reflected instantly

### 🖥️ Rendering & Interface
- **Retro Aesthetic**: Features a "hacker-style" terminal look with CRT scanline effects and text glow
- **Responsive Design**: Fully fluid layout built with Tailwind CSS that works on all screen sizes
- **Activity Logging**: A scrolling log captures all events with precise timestamps
- **Visual Indicators**: LED-style status dots provide immediate visual health checks for devices

### 🏗️ System Architecture
- **Single-File Deployment**: Entire app logic (HTML/CSS/JS) contained in one file for portability
- **Authentication**: Integrated Firebase Authentication (Anonymous/Custom) for user-specific data isolation
- **Local Dev Support**: Includes `Makefile` and Python HTTP server support for easy local testing

## 🚀 Quick Start

### Prerequisites
- `make` command available on your system
- Python 3.x installed
- Modern web browser

### Installation & Run

1. **Clone the repository**
   ```bash
   git clone https://github.com/ahmemoha/local-net-utility.git
   cd local-net-utility
2. **Serve the application** (Recommended)
   ```bash
   make serve
   ```
3. **Access the app**
Open your browser to `http://localhost:8000/network_utility.html`

5. **Stop the Server:** When you are done, return to the terminal window and press `Ctrl+C`

### Alternative Methods
**Manual Run (No Makefile):**

```bash
python3 -m http.server 8000
```
**Direct File Access:**
```bash
make open
```
## 🎮 Usage
### Available Commands
Command	Description
```bash
make serve	##Launches the local simulation server on port 8000
make open	##Direct file access for layout inspection
make help	##Displays available commands
```
### Interactive Features
- Click **"Add Device"** to provision a new simulated node

- Click **"Run Network Scan"** to trigger the diagnostic simulation

- Watch the **Activity Log** for real-time feedback

## 📂 Project Structure

```bash
local-net-utility/
├── Makefile              # Command-line utility for running the app
├── README.md             # Project documentation (this file)
└── network_utility.html  # Main application logic and UI
```
## 🗺️ Roadmap
- **Initial UI/UX Design** (Retro Terminal)

- **Firebase Integration** (Firestore & Auth)

- **Simulation Logic** (Ping/Port Scan)

- **Visual Topology Map** (D3.js integration)

- **Export Logs to CSV**

- **Multi-user shared workspaces**


## ⚠️ Important Disclaimer
Simulation Notice: This application is strictly designed for demonstration and learning purposes. The network scanning, device status checks, and all the data reported (IP, MAC, Ports) are entirely simulated using JavaScript logic and random functions. It does not actually interact with a live physical network.hoosealicense.com/licenses/mit/)
