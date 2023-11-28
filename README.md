# Digital-Signal-Processing-Project
In signal processing, a digital filter is a system that performs mathematical operations on a sampled, discrete-time signal to reduce or enhance certain aspects of that signal. We can divide the filter into high-pass filters and low-pass filters by the frequency relative to the cutoff frequency it passes. We can also divide the filters into Infinite impulse response (IIR) and Finite impulse response (FIR) by the length of its impulse response. In this lab, we will design four kinds of filters and test their ability to filter the signals with noise.
![flowchart](https://github.com/OliverQueen1466/Storage_Image/blob/main/digital_pj/flowchart.png)

<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">
  Flowchart of the project
</center>
<p align="center">HelloWorld</p>


## Getting Started

These instructions will give you a copy of the project up and running on
your local machine for development and testing purposes. See deployment
for notes on deploying the project on a live system.

### Prerequisites

Requirements for the software and other tools to build, test and push 
- Matlab

### Installing

Linux:

    git clone https://github.com/OliverQueen1466/Digital-Signal-Processing-Project.git


## Running the tests

Explain how to run the automated tests for this system

### Step 1: Generate sample noise and add noise 

noise_gen.m file creates a signal with 'sin' and 'cos' function. Then a noise is added thhrough 'randn' function

<div style="display:inline-block">
  <img src="https://github.com/OliverQueen1466/Storage_Image/blob/main/digital_pj/samplesignal.png" alt="image1" width="400">
  <img src="https://github.com/OliverQueen1466/Storage_Image/blob/main/digital_pj/frequency_ample.png" alt="image2" width="400">
</div>

<center style="font-size:14px;color:#C0C0C0;text-decoration:underline">
  Gluttonous Snake game demo
</center>

### Step 2: Choose IIR/FIR to filter noise 

- Buttord low pass filter through bilinear transformation
- FIR low pass filter through kaiser window
- FIR high pass filter through kaiser window


### Step 3: Analyze the output signal

Analyze the frequency reponse and waveform of the output signal and compare with the original signal. 


## Acknowledgments

  - Thank you for Prof. Gibson's instruction on this project 
