---
layout: post
title: First self-lead research
subtitle: You don't know what you don't know until you know it
cover-img: /assets/img/macleod.jpg
thumbnail-img: /assets/img/thumb.png
share-img: /assets/img/path.jpg
# <!-- subtitle: Excerpt from Soulshaping by Jeff Brown -->
# <!-- cover-img: /assets/img/path.jpg
# <!-- thumbnail-img: /assets/img/thumb.png
# share-img: /assets/img/path.jpg --> -->
# <!-- tags: [books, test] -->
author: Tom
---
 
Took [CPEN 511 Advnanced Computer Architecture](https://ece.ubc.ca/courses/cpen-511/) from Jan to Apr 2025 with [Prof. Prashant Nair](https://ece.ubc.ca/prashant-nair/). Have to say, the first seminar course is always a challenge. However, I learned a lot from it. 

[Jiajun](https://github.com/Jiajun-Huang) and I grouped up to do a research project on memory optimization for [vllm](https://github.com/vllm-project/vllm). In a nutshell, vllm introduces Virtual Memory concepts to manage memory on the GPU, which is a game changer for large language models (LLMs). Their paper is [here](https://arxiv.org/pdf/2309.06180).

*TLDR:*
- Use VM memory concepts to manage GPU memory for LLM inference
- LLM requests <=> Processes 
- Token Blocks <=> Pages
- Tokens <=> Bytes 

With some experience with OS page fault prefetching with [Shaurya Patel](https://people.ece.ubc.ca/shauryapatel/) and [Prof. Alexandra Fedorova](https://people.ece.ubc.ca/sasha/), I decided to leverage the OS prefetching mechanism to improve vllm's memory management.

Detailed report can be found [here](../courses/CPEN511/Final_report.pdf).

In short, we proposed to grab the memory access trace in vllm and use it to prefetch the memory pages that are likely to be accessed in the future. Since the mechanism in vllm is similar to OS VM, we can use the same prefetching mechanism to improve the performance of vllm. All the above make sense in CPU since there are just a lot more various workloads in OS that we have to generalize the  prefetching mechanism. However, in machine learning in general, the workloads are more predictable and regular. Therefore, in the implementation of vllm, because the scheduling of tasks are fully in control, the next access is fully deterministic. Therefore, prefeching does not make sense in vllm. 😭

Although the project did not go as planned, I learned a lot about how to do research. The most important lesson is that you don't know what you don't know until you know it. I thought I knew a lot about memory management and prefetching, but I realized that there are still many things I need to learn. This is the first time I did a self-lead research project, and it was a great experience. I learned how to read papers, how to write reports, and how to present my work. I also learned how to work with a team and how to communicate effectively.

With all the mistakes I made this time, hopefully I don'y fall into the same trap again LOL.

Until next time, happy coding! 😄