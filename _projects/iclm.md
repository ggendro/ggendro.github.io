---
layout: project
title: Independent Causal Language Models
date: 2024-02-04
thumbnail: /assets/projects/domain-independent-mechanisms.jpg
thumbnail_caption: Illustration of the Independent Causal Mechanisms (ICM) priciple.
authors:
  - Gaël Gendron
  - Bao Trung Nguyen
  - Alex Peng
  - Michael Witbrock
  - Gillian Dobbie
excerpt: We develop a novel modular language model architecture sparating inference into independant causal modules, and show that it can be used to improve abstract reasoning performance and robustness for out-of-distribution settings.
technologies:
  - Large Language Models
  - Abstract Reasoning
  - Independent Causal Mechanisms
  - Out-of-distribution Generalization
github_link: https://github.com/Strong-AI-Lab/modular-lm
paper_link: https://aclanthology.org/2024.emnlp-main.381/
featured: true
---

## Overview

In this project, we develop **Independent Causal Language Models** (ICLMs), a novel modular language model architecture that separates inference into independent causal modules. This approach differs from mixtures-of-experts by focusing on the causal independence of the modules and ensuring that they execute high-level functions independently. We show that ICLMs can be used to improve abstract reasoning performance and robustness for out-of-distribution settings.

![Independent Causal Mechanisms (ICM) architecture diagram](/assets/projects/iclm-architecture.jpeg)

The architecture (above) consists of an (LLM) **router module** that selects the appropriate (LLM) **reasoning modules** based on the input. Each module is trained on trained on an independent distribution with Low-Rank Adaptation (LoRA) fine-tuning, allowing each to specialize to specific tasks while maintaining independence from each other. The router module uses a clustering mechanism to select the most relevant module for a given input, ensuring that the model can adapt to various tasks on the fly. An additional **invariant module** is trained on all distributions to represent the common knowledge shared across all modules, allowing the model to generalize better to unseen tasks. See the [paper](https://aclanthology.org/2024.emnlp-main.381/) for more details on the model architecture and training procedure.

## Key Takeaways

**Model Architecture**: ICLMs are modular language models that separate inference into independent causal modules, jointly trained with Low-Rank Adaptation (LoRA) fine-tuning. Each module specializes on a distribution, following the signal of a router module.

**Experiments**: We evaluate ICLMs on a abstract reasoning tasks and show that including causal principles into LLMs can improve strong reasoning and generalization.

**Independence**: LLms can partially approximate independent mechanisms but still rely on a pre-trained shared mechanism at test time.

## Future Directions

Our proposed model is an initial step towards building modular language models with independent executable functions following sparse and robust causal relationships. It currently emulates a single graph layer. We are currently exploring more complex structure combinations (such as trees and graphs) to improve the expressivity of the overall causal graph. We hope that it can lead to more efficient, modulable and interpretable AI model pipelines, on which atomic interventions can be performed to further improve their reasoning abilities.
