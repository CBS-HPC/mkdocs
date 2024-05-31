# Type 1 – Interactive HPC (UCloud)     [![UCloud](/HPC_Facilities/images/hpc_ucloud.png){ align=right}](https://cloud.sdu.dk/app/login) 

The easiest-to-use HPC service is DeiC Interactive HPC (Type 1) also known as [UCloud](https://cloud.sdu.dk/). 

This service is provided by the Danish universities **SDU** and **AAU** and consist of three HPC systems:


| Institution | System      | User Access       | User-Friendly | Sensitive data |
|-------------|-------------|-------------------|---------------|----------------|
| SDU/K8      | Kubernetes  | GUI / Interactive | Yes           | Yes            |
| AAU/K8      | Kubernetes  | GUI / Interactive | Yes           | Yes            |
| AAU         | Open Stack  | SSH / terminal    | No            | No             |


## Costs
Machine types are devided into CPU and GPU based machines with their costs being  measured in **core hours** and **GPU core-hours** respectively.

A 1 (GPU) core machine cost 1 (GPU) core-hour pr. hour and a 64 (GPU) core machine cost 1 (GPU) core-hour pr. hour.


## Machine Type

=== "Overview"
    
    These HPC systems provides users with the following machine types:

    | Name       | Institution | CPU (Cores) | RAM (GB) | GPU (Cores)       | User Access       | User-Friendly |
    |------------|-------------|-------------|----------|-------------------|-------------------|---------------|
    | u1-standard| SDU/K8      | 64          | 384      | N/A               | GUI / Interactive | Yes           |
    | u3-gpu     | SDU/K8      | 192         | 768      | 4x NVIDIA H100    | GUI / Interactive | Yes           |
    | uc1-gc     | AAU/K8      | 128         | 512      | N/A               | GUI / Interactive | Yes           |
    | uc1-A10    | AAU/K8      | 64          | 256      | 4x NVIDIA A10     | GUI / Interactive | Yes           |
    | uc-t4      | AAU         | 60          | 240      | 6x Nvidia T4      | SSH / terminal    | No            |
    | uc-a10     | AAU         | 64          | 240      | 4x Nvidia A10     | SSH / terminal    | No            |
    | uc-a40     | AAU         | 64          | 480      | 3x Nvidia A40     | SSH / terminal    | No            |
    | uc-a100    | AAU         | 64          | 480      | 2x Nvidia A100    | SSH / terminal    | No            |


=== "SDU/K8"

    [(SDU/K8)](https://cloud.sdu.dk/app/providers/detailed/ucloud) provides **CPU** and **GPU** based containerized applications such as MATLAB, STATA, RStudio, and JupyterLab through a graphical user interface (GUI), in the same way as they would on your laptop. [See all apps](https://docs.cloud.sdu.dk/Apps/apps_index.html).

    **CPU Nodes (u1-standard):**
    
        Dell PowerEdge C6420
        64 Core Intel Xeon Gold 6130
        384 GB DDR4-2400

    ![](/HPC_Facilities/images/u1-standard.PNG)
        
    **GPU Nodes (u3-gpu):**
        
        Lenovo ThinkSystem SR675 V3  
        192 Core AMD EPYC 9454 
        768 GB DDR5-4800 
        4x NVIDIA Hopper H100-SXM5, 80 GB

    ![](/HPC_Facilities/images/u3-gpu.PNG)

    **Storage:**

        u1-cephfs -	The storage system for DeiC interactive HPC

=== "AAU/K8"

    [(AAU/K8)](https://cloud.sdu.dk/app/providers/detailed/aau-k8) provides **CPU** and **GPU** based containerized applications such as MATLAB, STATA, RStudio, and JupyterLab through a graphical user interface (GUI), in the same way as they would on your laptop. [See all apps](https://docs.cloud.sdu.dk/Apps/apps_index.html).

    **CPU Nodes (uc1-gc):**

        128 Core AMD EPYC 7702 
        512 GBs of RAM
    
    ![](/HPC_Facilities/images/u1-gc.PNG)

    **GPU Nodes (uc1-A10):**

        64 Core Intel Xeon Gold 6326
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
