# SLURM Clusters on UCloud 

=== "Tutorial"
    ```
    --8<-- "docs\UCloud_SlurmCluster\SLURM.md"
    ```
=== "Launch File (slurm-launch.py)"
    ```
    --8<-- "docs\UCloud_SlurmCluster\SLURM_deployment\slurm-launch.py"
    ```
=== "Ray (Python)"
    === "slurm-template_ray.sh"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_deployment\slurm-template_ray.sh"
        ```
    === "SklearnRay.py"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_scripts\SklearnRay.py"
        ```
=== "Dask (Python)"
    === "slurm-template_dask.sh"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_deployment\slurm-template_dask.sh"
        ```
    === "SklearnDask.py"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_scripts\SklearnDask.py"
        ```
=== "doParallel (R)"
    === "slurm-template_R.sh"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_deployment\slurm-template_R.sh"
        ```
    === "doParallel.r"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_scripts\doParallel.r"
        ```

    === "tidyModel_RF.r"
        ```
        --8<-- "docs\UCloud_SlurmCluster\SLURM_scripts\tidyModel_RF.r"
        ```