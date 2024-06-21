# A modified TMB pipeline

This repository includes the TMB analysis process used in the paper based on, with the following changes:

- A `Dockerfile` has been added for building a Docker container to run this process.
- The `metadata.xlsx`, `reconstruction.txt` and `reconstruction_first_line` used in this article are included.
- Python scripts are from  [https://github.com/ilivyatan/TMB](https://github.com/ilivyatan/TMB)
- The default parameter in the `Analysis_pipeline_16S_TMB.py` file has been changed from 0.075 to 0.3.
```python
            # find environmental contaminations (use default percentage of 7.5% for now)
            df_environmental_contaminants, df_non_environmental_contaminants_mask, df_contols_percentages = \
                pipeline_data.filter_environmental_contaminants(0.3)

            # paraffin controls filter
            df_paraf_contaminants, df_non_paraf_contaminants_mask, df_paraf_percentages = \
                pipeline_data.filter_contaminants(('paraf control', 'pcontrol'), 'paraffin', 0.3)
```
- Two lines of code have been added in the head of `Analysis_pipeline_16S_TMB.py` to enable this process to run in the Docker terminal.
```python
import matplotlib
matplotlib.use('Agg')
```

## Usage Instructions

- Download this repository.

- Build the container.
- Run the program to get the results.
