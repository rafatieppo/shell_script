# SHELL_SCRIPT folder

This folder keeps shell scripts to make Linux setup easier and others
routines as well.

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

## zip_shape_files_from_find

- zip file from find command
- created by @rafatieppo
- date: 2023-08-18
- create separated zip files for all shape files in a folder

## unzip_cp_rm_folders

- unzip, cp, rm folders from zip files
- created by @rafatieppo
- Data from CAR 2023 have a folder (AREA_IMOVEL) into a zipped files, its necessary extract the shapes into this folder


## LICENSE

See [MIT LICENSE](https://github.com/rafatieppo/SHELL_SCRIPT/blob/master/LICENSE.md)



