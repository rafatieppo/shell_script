# debian_linux


## python_create_folders_venvs

- creates folder for python environments `.virtualenvs/venv_basic` etc

## debian_change_gpucard.sh

- Change gpu card for Debian Buster
- It is for Avell-A52 laptop 
- In this case there an *Intel Corporation CoffeeLake-H GT2 [UHD Graphics 630]* and *VIDIA Corporation GP107M [GeForce GTX 1050 3 GB Max-Q]*
- It demands x11-xserver-utils, for more details check [HERE](https://rafatieppo.github.io/post/2020_05_25_debian_nvidia/)

## debian_after_install_a_base.sh

- Install some useful software for daily work.
- by @rafatieppo
- In Debian 10 you need super user, run as follows:
    `su -`

## debian_after_install_b_python.sh

- Install python stuff (setup tools, pip3 ...).
- by @rafatieppo
- In Debian 10 you need super user, run as follows:
    `su -`

## debian_after_install_c_python.sh

- Install some utils stuff (imagemagick, ...).
- imagemagick, curl, caja-dropbox, caja-open-terminal, tmux, cups, printer drivers, cheese webcam
- by @rafatieppo
- In Debian 10 you need super user, run as follows:
    `su -`

## debian_after_install_x_qgis.sh

- Write repository in `/etc/apt/source.list.d/qgis.sources` for Debian 
- Install gpg key
- Update repositories
- Install qgis python-qgis qgis-plugin-grass saga grass-gui grass-dev
- Edit if you desire LTR qgis version
- Super user is mandatory

## debian_after_install_x_rbase.sh

- Write repository in `/etc/apt/source.list.d/rbase_repo.list` for Debian Buster
- Install gpg key
- Update repositories
- Install R-base for Debian Buster
- Super user is mandatory

## github_config_rt.sh

- Install and configure **GITHUB**
- It's from @fernandomayer and modified by @rafatieppo
- Super user is no mandatory

## python3_run_pip3_lib.sh

- instal libraries by means pip3
- Do not forget to create a environment to install
- no require sudo (to install in `/home`)
- created by @rafatieppo

## txt files

- Each file is a list with pack to install into a specific environment
  - python3_list_basic_packs.txt
  - python3_list_geo_packs.txt
  - python3_list_packs.txt
