# A modified TMB pipeline

## Features Introduction
This repository includes the TMB analysis process from the article, forked from [https://github.com/ilivyatan/TMB](https://github.com/ilivyatan/TMB), with the following changes:

- A `Dockerfile` has been added for building a Docker container to run this process.
- The original meta file and reaction file in the repository have been replaced with the files from this article.
- The default parameter in the `Analysis_pipeline_16S_TMB.py` file has been changed from 0.075 to 0.3.
- Two lines of code have been added to enable this process to run in the Docker terminal.

## Usage Instructions

- Download this repository.
- Build the container.
- Run the program to get the results.
