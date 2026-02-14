# 📡 Monopole Antenna Design and Simulation in MATLAB

## 📌 Project Overview

This project presents the design, simulation, and analysis of a
**quarter-wave monopole antenna** using MATLAB (Antenna Toolbox).

The monopole antenna is widely used in wireless communication systems
due to its simple structure and omnidirectional radiation
characteristics.

------------------------------------------------------------------------

## 🎯 Objectives

-   Design a quarter-wave monopole antenna
-   Analyze radiation pattern
-   Evaluate S-parameters (S11)
-   Study impedance characteristics
-   Visualize current distribution
-   Understand bandwidth performance

------------------------------------------------------------------------

## 🧠 Theory

A monopole antenna length is:

L = λ / 4

Where:

-   λ = c / f\
-   c = 3 × 10\^8 m/s\
-   f = operating frequency

The monopole antenna behaves like half of a dipole placed over a ground
plane.

Key characteristics:

-   Omnidirectional radiation pattern (azimuth plane)
-   Vertically polarized
-   Typical input impedance ≈ 36.5 Ω (ideal case)

------------------------------------------------------------------------

## 🛠 Requirements

-   MATLAB (R2020 or later recommended)
-   Antenna Toolbox

------------------------------------------------------------------------

## 📐 Design Parameters

  Parameter      Value
  -------------- ------------------
  Frequency      1 GHz
  Ground Plane   Infinite (ideal)
  Length         λ/4
  Radius         1 mm

------------------------------------------------------------------------

## 💻 MATLAB Code

``` matlab
clc;
clear;
close all;

% Design Frequency
f = 1e9;                 % 1 GHz
c = 3e8;                 % Speed of light
lambda = c/f;            % Wavelength

% Monopole length
L = lambda/4;

% Create monopole antenna
monopole = monopoleAntenna;
monopole.Height = L;
monopole.Radius = 0.001;

% Show antenna
figure;
show(monopole);
title('Quarter Wave Monopole Antenna');

% Impedance
figure;
impedance(monopole, f);

% S-parameters
figure;
s = sparameters(monopole, linspace(0.5e9, 1.5e9, 101));
rfplot(s);

% Radiation Pattern
figure;
pattern(monopole, f);

% Current Distribution
figure;
current(monopole, f);
```

------------------------------------------------------------------------

## 📊 Results

### Radiation Pattern

-   Omnidirectional in azimuth plane
-   Maximum radiation perpendicular to antenna axis

### S11 Parameter

-   Minimum reflection at resonance (\~1 GHz)
-   Indicates good impedance matching

### Impedance

-   Real part near theoretical value
-   Imaginary part ≈ 0 at resonance

------------------------------------------------------------------------

## 📈 Performance Metrics

-   Resonant Frequency
-   Return Loss
-   VSWR
-   Bandwidth
-   Radiation Efficiency
-   Directivity

------------------------------------------------------------------------

## 🔬 Observations

-   Antenna resonates at quarter wavelength.
-   Ground plane significantly affects impedance.
-   Increasing radius increases bandwidth.
-   Length variations shift resonant frequency.

------------------------------------------------------------------------

## 📎 Future Improvements

-   Finite ground plane analysis
-   Bandwidth enhancement techniques
-   Matching network implementation
-   Fabrication and measurement comparison
-   Comparison with dipole antenna

------------------------------------------------------------------------

## 📚 References

1.  C. A. Balanis, *Antenna Theory: Analysis and Design*
2.  MATLAB Antenna Toolbox Documentation

------------------------------------------------------------------------

## 👤 Author

Your Name\
Department of Electronics / Communication\
Year: 2026

------------------------------------------------------------------------

⭐ If you found this helpful, feel free to fork and improve!
