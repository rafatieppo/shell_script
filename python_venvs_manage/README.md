# Shell script for Python ENVS

All the files are in: [https://github.com/rafatieppo/shell_script/tree/master/python_venvs_manage](https://github.com/rafatieppo/shell_script/tree/master/python_venvs_manage)

## Create CONDA environment and install packages from a script (YML)

### From a YML file

- install **miniconda** from: [https://www.anaconda.com/](https://www.anaconda.com/docs/getting-started/miniconda/install#linux-terminal-installer) (follow the instructions)
- Dowload the file `miniconda3_venv_basic.yml` in some directory. e.g. `~/Dowloads` .
- Into the `~/Download` dir run: `conda env create -f vconda_basic.yml` . It will create virtual a environment in `/home/rafatieppo/miniconda3/envs/vconda_basic` and install all the listed packages. There are others environments (files):
  - miniconda3\_vconda\_basic.yml
  - miniconda3\_vconda\_geo.yml
  - miniconda3\_vconda\_jupyters.yml
  - miniconda3\_vconda\_ml.yml
- To *Activate* the new environment: `conda activate vconda_basic`
- To *Deactivate* the environment: `conda deactivate`
- Verify that the new environment was installed correctly: `conda env list` or `conda info --envs`.

To instal a spcecific package:

- Activate the new environment: `conda activate vconda_basic`
- Install the package: `conda install numpy=2.2.2` or `conda install numpy`
- Or update the package: `conda update <PACKAGE>`
- Deactivate the environment: `conda deactivate`

### From a MANUAL mode

```
# Replace <ENVIRONMENT> with the name of the new environment
# Replace <VERSION> with the specific version of Python you want to install
conda create --name <ENVIRONMENT> python=<VERSION>
```

```
# Replace <PACKAGE_PATH/PACKAGE> with the relative path to the package.
conda install <PACKAGE_PATH/PACKAGE>.conda
```


## Create PIP (python) environment and install packages from a file

### List of packages for each environment

First create the folder and the environment, e.g.:

To create the folders:

```
python_create_folders_venvs.sh
```

To create the environment:

```
python3 -m venv /path/to/new/virtual/environment
```

Now, you need to activate the enviroment and install de packs:

```
source /path/to/new/virtual/environment activate

pip3 install -r python3_list_basic_packs.txt 
```

Files to install packs:

- python3\_list\_basic\_packs.txt
- python3\_list\_geo\_packs.txt
- python3\_list\_jupyters.txt
- python3\_list\_lsp.txt
- python3\_list\_ml\_packs.txt
- python3\_list\_packs.txt
- python\_create\_folders\_venvs.sh


