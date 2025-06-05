---
layout: project
title: Large Language Models Are Not Strong Abstract Reasoners
date: 2023-05-31
thumbnail: /assets/projects/abstract-visualization.jpg
authors:
  - Gaël Gendron
  - Qiming Bao
  - Michael Witbrock
  - Gillian Dobbie
excerpt: We evaluate the performance of large language models on abstract reasoning tasks and show that they fail to adapt to unseen reasoning chains, highlighting a lack of generalization and robustness.
technologies:
  - Large Language Models
  - Abstract Reasoning
  - Evaluation
  - Out-of-distribution Generalization
github_link: https://github.com/Strong-AI-Lab/Logical-and-abstract-reasoning
paper_link: https://dl.acm.org/doi/abs/10.24963/ijcai.2024/693
featured: true
---

## Overview
This project was the first attempt to evaluate large language models (LLMs) on a large variety of abstract reasoning tasks, including the [Abstract Reasoning Challenge (ARC-AGI)](https://arxiv.org/abs/1911.01547), [Raven's Progressive Matrices (RPM)](https://openaccess.thecvf.com/content_CVPR_2019/html/Zhang_RAVEN_A_Dataset_for_Relational_and_Analogical_Visual_REasoNing_CVPR_2019_paper.html), etc. We build a large benchmark of text-based abstract reasoning tasks, and evaluate the performance of LLMs on these tasks. We show that LLMs are not able to generalize to unseen reasoning chains, and fail to adapt to out-of-distribution settings.

## Key Takeaways

**New Benchmark**: We build a large benchmark of text-based abstract reasoning tasks.

**Evaluation of LLMs**: We evaluate the performance of large language models on abstract reasoning tasks, including GPT-4, LLaMA-2, etc. with different prompting methods (direct, CoT, few-shot, self-refinement, code-refinement) and using LoRA fine-tuning. Look into the [paper](https://dl.acm.org/doi/abs/10.24963/ijcai.2024/693) for the numerical results!

**Generalization Failure with Training and Fine-tuning**: We show that prompt-tuning methods are not sufficient to adapt LLMs to abstract reasoning tasks, and that fine-tuning models, while improving performance, does not lead to better generalization. Building systems of higher cognition would require additional breakthroughs in model architectures and training methods. 

## Future Directions 

We show that LLMs are not able to generalize to unseen reasoning chains, and fail to adapt to out-of-distribution settings. This highlights the need for more robust and generalizable models for abstract reasoning tasks, problem that we tackled in our [other projects](/projects.html).