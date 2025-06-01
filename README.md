# 🔐 Electronic Lock System – VHDL Implementation

This repository contains a VHDL implementation of an **Electronic Lock System**, designed using a DE10-Lite FPGA development board (Intel MAX 10). The design simulates a 4x4 matrix keypad decoder, a 7-segment display driver, and a code comparator for access control via a programmable key.

---

## 🔍 Overview

The electronic lock allows the user to enter a hexadecimal key using a simulated 4x4 matrix keypad. If the entered code matches the pre-programmed code on the FPGA:

- ✅ **Green LED** turns on → access granted (door unlocked)
- ❌ **Red LED** turns on → access denied (wrong code)

---

## 🧠 Features

- **Keypad Decoder**: Decodes keypresses from a 4x4 matrix keypad.
- **7-Segment Display Driver**: Displays the selected key in real-time.
- **Code Comparator**: Compares the entered key with a predefined code.
- **LED Indicators**: Red for incorrect code, Green for correct code.

---

## 🛠️ Project Structure

electronic-lock-vhdl/
│
├── decode_serrure.vhd # Keypad decoder logic
├── segments.vhd # 7-segment display driver
├── comparate.vhd # Code comparison logic
├── serrure.dbf # Top-level schematic (Quartus)
├── testbench/ # VHDL testbenches
│ ├── tb_decode_serrure.vhd
│ ├── tb_segments.vhd
│ └── tb_comparate.vhd
└── README.md # This documentation file

---

## 🧪 Simulation & Testing

Each module can be simulated independently using built-in or external tools:

- **ModelSim** – Industry-standard simulator for VHDL/Verilog.
- **GHDL** – Lightweight open-source VHDL simulator.
- **Xilinx ISE (with ISim)** – For Xilinx FPGAs.
- **Quartus Prime (with ModelSim-Altera or Questa)** – For Intel FPGAs like the DE10-Lite.

### ✔️ Functional Simulation

1. Compile all VHDL files.
2. Run the testbench for each module.
3. Verify that simulation outputs match the expected logic values.

### ⏱️ Timing Simulation

- Run post-synthesis and post-place-and-route simulations.
- Confirm that all setup and hold timing constraints are respected.

---

## ⚙️ Setup Instructions (Quartus Prime)

1. Open **Quartus Prime**.
2. Create a new project targeting the **DE10-Lite board (Intel MAX 10)**.
3. Add all `.vhd` files to the project.
4. Set `decode_serrure`, `segments`, and `comparate` as top-level entities.
5. Use the **Pin Planner** to assign I/O pins based on your DE10-Lite board.
6. Compile the project and program the FPGA.

> ✅ Ensure pin assignments match the DE10-Lite board’s layout (consult its datasheet).

---

## 📌 Notes

- 🔐 Default programmed access code is `"0101"` (binary for 5).
- 🛠️ You can change the code in `comparate.vhd` by modifying the `CODE` constant.
- 💡 This design assumes a **common cathode 7-segment display**. Adjust logic if your display is common anode.

---

## 📚 License

This project is open-source. Feel free to use, modify, or distribute it under your preferred license.

---

## 👤 Author

**Omrani Mohamed**

