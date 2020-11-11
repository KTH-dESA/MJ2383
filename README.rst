MJ2383
------

Lab 1:

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/KTH-dESA/MJ2383/main?filepath=MJ2383%20Computer%20Lab%201.ipynb

Lab 3:

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/KTH-dESA/MJ2383/lab3_will?filepath=mj2383_lab3.ipynb


 Developing with Jupyter Notebooks
 ---------------------------------

 Before starting work on adding or editing content with the Jupyter Notebooks in this
 repository, please ensure you have set up your Python environment correctly.

 We recommend using miniconda to manage your Python environments.

 Install the dependencies using the enclosed environment file:

     conda env create -f environment.yml

 Also, installing nbstripout makes development easier, as it automatically removes the
 extraneous information from the Jupyter notebook when using version control with git.

    conda activate osemosys
    conda install nbstripout
    nbstripout --install
