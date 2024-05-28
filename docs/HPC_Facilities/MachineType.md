# Type 1 – Interactive HPC (UCloud)     [![UCloud](/HPC_Facilities/images/hpc_ucloud.png){ align=right}](https://cloud.sdu.dk/app/login) 

The easiest-to-use HPC service is DeiC Interactive HPC (Type 1) also known as [UCloud](https://cloud.sdu.dk/). This service is provided by the Danish universities **SDU** and **AAU**.

## Costs
Machine types are devided into CPU and GPU based machines with their costs being  measured in **core hours** and **GPU core-hours** respectively.

A 1 (GPU) core machine cost 1 (GPU) core-hour pr. hour and a 64 (GPU) core machine cost 1 (GPU) core-hour pr. hour.


## Overview

=== "SDU/K8"

    [(SDU/K8)](https://cloud.sdu.dk/app/providers/detailed/ucloud) provides **CPU** and **GPU** based containerized applications such as MATLAB, STATA, RStudio, and JupyterLab through a graphical user interface (GUI), in the same way as they would on your laptop. [See all apps](https://docs.cloud.sdu.dk/Apps/apps_index.html).

    **CPU Nodes (u1-standard):**
    
        Dell PowerEdge C6420
        2x Intel Xeon Gold 6130 @ 2.10 Ghz (total of 64 vCPU)
        384 GB DDR4-2400

    ![](/HPC_Facilities/images/u1-standard.PNG)
        
    **GPU Nodes (u3-gpu):**
        
        Lenovo ThinkSystem SR675 V3  
        2x AMD EPYC 9454 @ 2.75 Ghz (total of 192 vCPU) 
        768 GB DDR5-4800 
        4x NVIDIA Hopper H100-SXM5, 80 GB

    ![](/HPC_Facilities/images/u3-gpu.PNG)

    **Storage:**

        u1-cephfs -	The storage system for DeiC interactive HPC

=== "AAU/K8"

    [(AAU/K8)](https://cloud.sdu.dk/app/providers/detailed/aau-k8) provides **CPU** and **GPU** based containerized applications such as MATLAB, STATA, RStudio, and JupyterLab through a graphical user interface (GUI), in the same way as they would on your laptop. [See all apps](https://docs.cloud.sdu.dk/Apps/apps_index.html).

    **CPU Nodes (uc1-gc):**

        128 AMD EPYC 7702 
        512 GBs of RAM
        4x NVIDIA A10 GPU
    
    ![](/HPC_Facilities/images/u1-gc.PNG)

    **GPU Nodes (uc1-A10):**

        64 Intel Xeon Gold 6326
        256 GBs of RAM
        4x NVIDIA A10 GPU
    
    ![](/HPC_Facilities/images/u1-a10.PNG)

    **Storage:**

        uc1-cephfs - The storage system for DeiC interactive HPC (AAU).


=== "AAU"
    
    [AAU](https://cloud.sdu.dk/app/providers/detailed/aau) provides primary **GPU** based [virtual machines](https://cloud.sdu.dk/app/applications/search?q=Virtual%20Machines). Access is obtained through terminal and [SSH](). It is possible to set up interactive enviroments such as [JupyterLab](https://hpc.ruc.dk/blog/tutorials/setting-up-jupyternotebook-with-gpus-on-aau/).

    === "NO SENSITIVE DATA"

        Virtual machines hosted by AAU are only suitable for the processing of

        - public and,
        - low risk internal data.

        The specific data classification model applicable to your institution should be consulted before using these compute resources.

        AUTOMATIC SHUT OFF AND DELETION

        It is your responsibility to ensure that you have sufficient resources to keep your virtual machine running while you need it. All virtual machines are automatically shut off when the user runs out of resources.

        To restart the machine, additional funds should be requested from your front office to cover the full duration that the virtual machine is shut off, plus any additional compute time.

        All data and information related to virtual machines are IRRECOVERABLY deleted if shut off for:

        - A100 virtual machines: 3 days (72 hours)
        - All other virtual machines: 14 days (336 hours)


        Four different machine types based on different Nvidia GPUs (T4, A10 , A40 and A100) with different application purposes. 

        **Nvidia A100 is avaliable on the following machines:**

    === "Nvidia T4"
       
        **Nvidia T4 is avaliable on the following machines:**

        ![](/HPC_Facilities/images/uc-t4.PNG)

    === "Nvidia A10"
        
        **Nvidia A10 is avaliable on the following machines:**
        
        ![](/HPC_Facilities/images/uc-a10.PNG)

    === "Nvidia A40"
        
        **Nvidia A40 is avaliable on the following machines:**

        ![](/HPC_Facilities/images/uc-a40.PNG)

    === "Nvidia A100"

        **Nvidia A100 is avaliable on the following machines:**
        
        ![](/HPC_Facilities/images/uc-a100.PNG)

    === "Specifications"    

        Their specifications are summarized in a table below.

        | GPU        | Architecture | CUDA Cores | Tensor Cores | Memory      | FP16 (Half) TFLOPS | FP32 (Float) TFLOPS | FP64 (Double) GFLOPS | Data Sheet                                        |
        |------------|--------------|------------|--------------|-------------|--------------------|---------------------|----------------------|---------------------------------------------------|
        | Nvidia T4  | Turing       | 2,560      | 320          | 16 GB GDDR6 | 65.1               | 8.1                 | 254.4                | [T4](https://www.nvidia.com/content/dam/en-zz/Solutions/Data-Center/tesla-t4/t4-tensor-core-datasheet-951643.pdf)  |
        | Nvidia A10 | Ampere       | 6,144      | 384          | 24 GB GDDR6 | 31.2               | 31.2                | 976.3                | [A10](https://www.nvidia.com/content/dam/en-zz/Solutions/Data-Center/a10/pdf/datasheet-new/nvidia-a10-datasheet.pdf)  |
        | Nvidia A40 | Ampere       | 10,240     | 320          | 48 GB GDDR6 | 37.4               | 37.4                | 0.59                 | [A40](https://images.nvidia.com/content/Solutions/data-center/a40/nvidia-a40-datasheet.pdf)  |
        | Nvidia A100| Ampere       | 6,912      | 432          | 80 GB HBM2  | 78.0               | 19.5                | 9700                 | [A100](https://www.nvidia.com/content/dam/en-zz/Solutions/Data-Center/a100/pdf/nvidia-a100-datasheet-nvidia-us-2188504-web.pdf)  |



        - **CUDA cores** are the general-purpose processing units in a GPU that can perform computations with standard floating-point precision, such as single-precision (32-bit) or double-precision (64-bit).

        - **Tensor Cores** are optimized to trade off precision for speed and can significantly accelerate deep learning training and inference.

        - A more detailed description can be found [here](https://medium.com/@primedeviation/cuda-vs-tensor-cores-a-guide-for-ml-workloads-and-model-training-1756bedd5f03).
