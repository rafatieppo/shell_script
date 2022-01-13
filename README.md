# SHELL_SCRIPT folder

This folder keeps shell scripts to make Linux setup easier and others
routines as well.

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

## github_config_rt.sh

- Install and configure **GITHUB**
- It's from @fernandomayer and modified by @rafatieppo
- Super user is no mandatory
- no debian instalar como `su` e NAO `su -`

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

## xubuntu_run_after_install_rt.sh

- Install some useful software for diary work.
- It's from @fernandomayer and modified by @rafatieppo
- It demands super user to run

## txt files

- Each file is a list with pack to install into a specific environment
  - python3_list_basic_packs.txt
  - python3_list_geo_packs.txt
  - python3_list_packs.txt

## LICENSE

See [MIT LICENSE](https://github.com/rafatieppo/SHELL_SCRIPT/blob/master/LICENSE.md)



