---
layout: project
title: Behaviour Modelling of Social Agents
date: 2023-12-21
thumbnail: /assets/projects/meerkats.jpg
thumbnail_caption: Meerkats are social animals that exhibit complex behaviours.
excerpt: We model the behaviour of interacting social agents (e.g. meerkats) using a combination of causal inference and graph neural networks, and demonstrate increased efficiency and interpretability compared to existing architectures.
authors:
  - Gaël Gendron
  - Yang Chen
  - Mitchell Rogers
  - Yiping Liu
  - Mihailo Azhar
  - Shahrokh Heidari
  - David Arturo Soriano Valdez
  - Kobe Knowles
  - Padriac O'Leary
  - Simon Eyre
  - Michael Witbrock
  - Gillian Dobbie
  - Jiamou Liu
  - Patrice Delmas
technologies:
  - Graph Neural Networks
  - Causal Structure Discovery
  - Agent-Based Modelling
github_link: https://github.com/Strong-AI-Lab/behavior-causal-discovery
paper_links: 
- name: Proposal 
  url: https://dl.acm.org/doi/abs/10.5555/3635637.3663132
- name: Dataset Paper
  url: https://arxiv.org/abs/2306.11326
- name: Model Paper
  url: https://arxiv.org/abs/2312.14333
featured: true
---

## Overview

This project focuses on modelling the behaviours of natural social agents (e.g. a mob of meerkats) and representing their inner cognitive models as complex causal graphs. We propose to discover the causal structure of the agents' behaviours from data and combine it with a graph neural network (GNN) to model information propagation in an action network. Our approach showed better efficiency than other neural-based methods, while also being more interpretable.

## Key Takeaways

**Dataset** As part of this project, we collected a large dataset of annotated meerkat behaviours, which is the first of its kind. We released the dataset publicly.

**Causal Structure Discovery** We propose an interpretable method for modelling and predicting the behaviours of social agents using causal structure discovery and graph neural networks. 

**Experiments** We apply our method over a group of meerkats and show that it competes with standard architectures while being more efficient and interpretable, outperforming them in low temporal context settings.

**Simulation** We also show that our method can be used to simulate the behaviours of social agents over time, yielding more realistic behavioural sequences than its neural counterparts.

## Future Directions

This work has any applications, ranging from animal welfare to robotics or the understanding of human social structures. We are currently expanding this work to other social agents and modelling dynamics as well as behaviours. We hope that this work can lead to interpretable and robust models able to simulate social agents in counterfactual settings, discover their underlying ethical principles, their reward functions, or predict dangerous patterns.
