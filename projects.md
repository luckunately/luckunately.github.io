---
layout: page
title: Projects
subtitle: What I have done so far
---

## Research on vllm

A group project in CPEN511 Advanced Computer Architecture, where I worked with [Jiajun](https://github.com/Jiajun-Huang) 

See [First self-lead research](../2025/06/21/First-self-lead-research.html) for details.

## Tetris Game on FPGA

After the embrace of CPEN412 where I was soaked with digital design and embedded programming, I finally implemented a Tetris game on FPGA. It was quite fun to make. I learned a lot from this project.

The game is implemented on a [DE1-SoC](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=165&No=836) board, which has a Cyclone V SoC FPGA. The game is written in Verilog and C. The game is displayed on a VGA monitor and controlled by a PS/2 keyboard.

The main takeaways from this project are the HDL desgin to let CPU to interact with other modules connected by shared data bus and mapped addresses. Then some embeded C programming to allow the CPU to drive the connected modules in the FPGA board.

[GitHub Repo](https://github.com/luckunately/Tetris_Project) contains the detailed implementation of the project.

## ECC FPGA Comparison

In ELEC433, I implemented a simple [LDPC decoder](https://github.com/luckunately/ELEC433-Projects/tree/main/LDPC_Decoding) to simulate ECC DRAM behaviour (64-72 bits) on FPGA and compared the performance to the conventional ECC DRAM (Hamming [64-in](https://github.com/luckunately/ELEC433-Projects/tree/main/Hamming64in), [72-out](https://github.com/luckunately/ELEC433-Projects/tree/main/Hamming72out)). 

It is compared on performance in decode/encode cycle, combinational logic length, maximal frequency, gate usage, efficiency, and ease of use on DE1-SOC FPGA board.

I collaborated with [Natalie Balashov](https://github.com/natmarbal) in this project. She is probably the best partner you can find in a group project.

## ML on Audio Data

What could be a fun ML project? How about let the model to figure out my preference of music? This is my CPEN 355 final project.

I trained over 200 songs from my 16 most-listened artists. Now the model can guess which singer I am listening to based on the audio snippets. 

Here is what I did:
1. Apply FFT to the audio data to get the frequency domain data.
2. Apply PCA to reduce the dimensionality of the data.
3. Compare the performance of SVM and vanilla neural network on the reduced data.

Here is the [report](courses/CPEN355/Project/Project_report.pdf) and the [code](courses\CPEN355\Project\Project.ipynb)