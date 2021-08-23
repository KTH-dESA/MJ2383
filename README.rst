MJ2383
------

Lab 1:

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/KTH-dESA/MJ2383/main?filepath=MJ2383_Lab_1.ipynb

Lab 3:

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/KTH-dESA/MJ2383/main?filepath=MJ2383_Lab_3.ipynb

Developing with Jupyter Notebooks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Before starting work on adding or editing content with the Jupyter Notebooks in this
repository, please ensure you have set up your Python environment correctly.

We recommend using miniconda to manage your Python environments.

Install the dependencies using the enclosed environment file::

    conda env create -f environment.yml

Also, installing nbstripout makes development easier, as it automatically removes the
extraneous information from the Jupyter notebook when using version control with git::

    conda activate osemosys
    conda install nbstripout
    nbstripout --install

Hints
~~~~~

Add a hyperlink to a file to edit by prepending `.../edit` to the relative path of the file.
For example::

    Edit this [CSV file](../edit/model/gas/data/CapitalCost.csv)

Link to the view of a folder by prepending `../tree` to the relative path. For example::

    View the results [here](../tree/results)

When using `!` to run shell commands, you can include Python variables by prepending them with a `$`.
For example::

    my_python_variables = 'a_string'
    !echo $my_python_variables | wc