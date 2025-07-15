# -Digital-signal-processing
# Digital Signal Processing with MATLAB

This repository contains MATLAB source code for simulating and designing digital filters, including both FIR (Finite Impulse Response) and IIR (Infinite Impulse Response) types. It is tailored for educational and research purposes in digital signal processing.

## 📁 File Overview

### 1. Sample Signal Files (`a0_*.m`)
These represent input signal types used for testing filter behavior:
- `a0_CaoQua.m` – “Too High” signal
- `a0_ThapQua.m` – “Too Low” signal
- `a0_DaiChan.m` – “Wide Stopband” signal
- `a0_ThongDai.m` – “Passband” signal

### 2. Window-Based Filter Design (`b0_*.m`)
Filter design using common windowing techniques:
- `b0_Blackman.m` – Blackman window
- `b0_ChuNhat.m` – Rectangular window
- `b0_Hamming.m` – Hamming window
- `b0_Hanning.m` – Hanning window
- `b0_TamGiac.m` – Triangular window

### 3. FIR and IIR Filter Implementations
Designs with various characteristics:
- FIR filters: low-pass, high-pass, stopband, passband, multiband
- IIR filters: low-pass, stopband, passband, multiband

## 🛠️ Usage
Each `.m` file can be run independently in MATLAB to generate filter responses or apply filters to signal inputs. These are especially helpful for learning DSP concepts or experimenting with custom filter configurations.

---

Feel free to contribute or customize the filters further. Happy filtering! 🎧
