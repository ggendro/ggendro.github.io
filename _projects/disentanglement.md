---
layout: project
title: Disentanglement via Causal Interventions on a Quantized Latent Space
date: 2023-02-02
thumbnail: /assets/projects/quantized-latent-space.jpg
thumbnail_caption: Quantized Latent Space Illustration.
authors:
  - Gaël Gendron
  - Michael Witbrock
  - Gillian Dobbie
excerpt: We propose a new approach to disentanglement based on hard causal interventions over a quantized latent space, and demonstrate its potential for improving the interpretability and robustness of generative models. 
technologies:
  - Variational Autoencoders
  - Vector Quantization
  - Causality
  - Disentanglement
github_link: https://github.com/Strong-AI-Lab/ct-vae
paper_link: https://dl.acm.org/doi/abs/10.24963/ijcai.2023/361
featured: true
---

## Overview

This project aims to improve the regularization of latent spaces in generative models via quantization and causal interventions. The main idea is to divide the latent space into discrete quantas of information
regularized to represent high-level semantic concepts (i.e. factors of variation). This is achieved by applying causal discovery and interventions on the latent space, forcing the quantas to be disentangled and semantically meaningful.

## Key Takeaways

**Causal Interventions**: We propose a new approach to disentanglement based on hard causal interventions over a quantized latent space.

**CT-VAE**: Our model, the Causal-Transition Variational Autoencoder (CT-VAE), is a generative model that learns a causal graph over a discrete latent space, allwowing for the generation of intervented samples.

**Experiments**: We test our model on toy image autoencoding datasets and show that it can yield disentangled representations, effectively separating factors of variation.

**Quantized Latent Space**: We raise an important question on the nature of disentanglement in discrete settings: standard disentanglement frameworks assume a continuous latent space, but we show that it is possible to achieve disentanglement in a discrete latent space by using causal interventions, quantas of information representing high-level semantic concepts.

## Future Directions

So far, we have explored the applicability of this paradigm on variational autoencoders (VAEs) and toy tasks, but scaling it more larger generative architectures is a promising direction. We hope that it can lead to more interpretable and robust generative models, with semantically meaningful latent spaces. In particular, this work can be used as a basis for building neural-causal models operating directly in the latent space.

