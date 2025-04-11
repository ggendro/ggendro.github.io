---
layout: project
title: Counterfactual Causal Inference in Natural Language
date: 2024-10-08
thumbnail: /assets/projects/counterfactual-inference-NL.jpg
thumbnail_caption: Example of causal extraction and counterfactual inference for news articles.
authors:
  - Gaël Gendron
  - Jože Rožanec
  - Michael Witbrock
  - Gillian Dobbie
excerpt: We build the first causal extraction and counterfactual causal inference system for natural language, and propose a new direction for model oversight and strategic foresight.
technologies:
  - Large Language Models
  - Causal Extraction
  - Causal Inference
  - Counterfactual Reasoning
  - Natural Language Processing
github_link: https://github.com/Strong-AI-Lab/counterfactual-llm-inference
paper_link: https://arxiv.org/abs/2410.06392
featured: true
---

## Overview

This project aims to build automatic systems able to parse texts for causal structures and perform causal inference to identify reasoning inconsistencies, build counterfactual scenarios, and evaluate the impact of interventions. We use LLMs to perform causal extraction and counterfactual inference, following interpretable causal principles.

## Key Takeaways

**Causal Extraction**: We propose to alleviate limitations of LLMs to represent causal relationships by relying on existing causal knowledge and siply parse it using causal extraction.

**Counterfactual Inference**: We use standard principles of abduction, intervention and prediction for rigorously computing counterfactuals and adapt them to the natural language domain.

**Experiments**: We show that the main limitations for compting counterfactuals in natural language are the lack of causal knowledge and logical understanding as models can fail even when the right causal structure is given.

## Future Directions

The end goal of this project is to create systems that can reason about cause and effects and build causal graph-text equivalences, which can later be used to recover the underlying causal structure of natural language texts, detect patterns, recursively build complex causal structures and, following these causal constraints, convert them to long text sequences without hallucination. These structures could furthermore be used to intervene on the text and generate counterfactuals, which could be used for training models in out-of-distribution settings and yield better, robust and interpretable reasoners.