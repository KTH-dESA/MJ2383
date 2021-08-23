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

License
~~~~~~~

This teaching material is made available under a Creative Commons CC-BY 4.0 license.

.. raw:: html
    <embed>
    <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">MJ2383 Computer Labs</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="energy.kth.se" property="cc:attributionName" rel="cc:attributionURL">Will Usher</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/KTH-dESA/MJ2383" rel="dct:source">https://github.com/KTH-dESA/MJ2383</a>
    </embed>