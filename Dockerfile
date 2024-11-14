# FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime
FROM python:3.9-slim
#REPLACE SECOND LINE WITH FIRST COMMENT IF NVIDIA GPU PRESENT

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    datasets \
    evaluate \
    lightning \
    transformers \
    wandb \
    scikit-learn \
    scipy


WORKDIR /workspace
COPY . /workspace

ENTRYPOINT ["python", "main.py"]