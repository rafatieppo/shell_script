# Shell script for Python ENVS

All the files are in: [https://github.com/rafatieppo/shell_script/tree/master/python_venvs_manage](https://github.com/rafatieppo/shell_script/tree/master/python_venvs_manage)

## File to create CONDA environment and install packages

### From a YML file

1. install **miniconda** from: [https://www.anaconda.com/](https://www.anaconda.com/docs/getting-started/miniconda/install#linux-terminal-installer)
2. Dowload the file `miniconda3_venv_basic.yml` in some directory. e.g. `~/Dowloads` .
3. Into the `~/Download` dir run: `conda env create -f vconda_basic.yml` . It will create virtual a environment in `/home/rafatieppo/miniconda3/envs/vconda_basic` and install all the listed packages. There are others environments (files):
  3. miniconda3\_vconda\_basic.yml
  3. miniconda3\_vconda\_geo.yml
  3. miniconda3\_vconda\_jupyters.yml
  3. miniconda3\_vconda\_ml.yml
4. Activate the new environment: `conda activate vconda_basic`
5. Deactivate the environment: `conda deactivate`
6. Verify that the new environment was installed correctly: `conda env list` or `conda info --envs`.

To instal a spcecific package:

1. Activate the new environment: `conda activate vconda_basic`
2. Install the package: `conda install numpy=2.2.2` or `conda install numpy`
3. Or update the package: `conda update <PACKAGE>`
5. Deactivate the environment: `conda deactivate`

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

## Files to handle PIP environments

### List of packages for each environment

- python3\_list\_basic\_packs.txt
- python3\_list\_geo\_packs.txt
- python3\_list\_jupyters.txt
- python3\_list\_lsp.txt
- python3\_list\_ml\_packs.txt
- python3\_list\_packs.txt
- python\_create\_folders\_venvs.sh

e.g.: `pip3 install -r python3_list_basic_packs.txt `

