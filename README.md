# SHELL_SCRIPT folder

This folder keeps shell scripts to make Linux setup easier and others
routines as well.

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

## pandoc_filters_get_install_rt.sh

- Its not necessary for now, I am using pip3 to install pandoc filters
- Just GET **PANDOC FILTERS**
- It was developed by @rafatieppo
- Super user is no mandatory
- It's necessary some improvements
    - to install filter correctly

## pdf_split.sh

- To split one ```.pdf``` file in several files ```.pdf``` (certificates by participant)
- it uses ```pdfjam```
- It is possible to specify a filename from a list (```.csv```)
- It adds ```.pdf``` extension
- Super user is no mandatory
- developed by @rafatieppo

## pop_os76_run_after_install_rt.sh

- Install some useful software for diary work.
- by @rafatieppo
- You need super user

## python3_run_pip3_lib.sh

- instal libraries by means pip3
- Do not forget to create a environment to install
- no require sudo (to install in `/home`)

## ubuntumate_run_after_install_rt.sh

- Install some useful software for diary work.
- It's from @fernandomayer and modified by @rafatieppo
- It demands super user to run

## xubuntu_run_after_install_rt.sh

- Install some useful software for diary work.
- It's from @fernandomayer and modified by @rafatieppo
- It demands super user to run

## tcx_polar_to_garmin.sh

- remove tags (Author Cretor) from `tcx` files to import in Garmin Connect
- created by @rafatieppo
- date: 2022-08-09
- how to run
    - copy all `.tcx` or `.TCX` files and `tcx_polar_to_garmin.sh` in a same folder
    - give permission as exec for `tcx_polar_to_garmin.sh` 
    - run `./tcx_polar_to_garmin.sh` 

## txt files

- Each file is a list with pack to install into a specific environment
  - python3_list_basic_packs.txt
  - python3_list_geo_packs.txt
  - python3_list_packs.txt

## LICENSE

See [MIT LICENSE](https://github.com/rafatieppo/SHELL_SCRIPT/blob/master/LICENSE.md)



