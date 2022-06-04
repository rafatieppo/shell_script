#!/bin/bash
# for Debian (Ubuntu Mate Xfce).
# new version 2022-06-04 by @rafatieppo

echo -------------------------------------------------------------------
echo Type 1 for Yes and 0 for No
echo -------------------------------------------------------------------
echo -e "\n"
echo -------------------------------------------------------------------
echo First of all, save and close all your files, Did you close? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    echo Next step.
else
    echo Script aborted
    exit
fi;

echo -------------------------------------------------------------------
echo ATTENTION: TYPE 1 for assign NVIDIA GTX1050, or TYPE 0 for assign INTEL GRAPHIC 630
echo -------------------------------------------------------------------
read opcao
# for nivida video card
if [ $opcao -eq 1 ] ; then
    LIGHTDISPLAY="$(grep '^#display-setup-script=/usr/local/bin/switch_nvidia.sh' /etc/lightdm/lightdm.conf)"
    # echo $LIGHTDISPLAY
    if [ "$LIGHTDISPLAY" = \#display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh ]; then
        echo -e "text: \"#display-setup-script=/usr/local/bin/switch_nvidia.sh\" was FOUND in /etc/lightdm/lightdm.conf\n"
        sed -i 's/\#display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh/display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh/g' /etc/lightdm/lightdm.conf
    echo -e "Section \"Module\"
    Load \"modesetting\"
EndSection\n
Section \"Device\"
    Identifier \"nvidia\"
    Driver \"nvidia\"
    BusID \"PCI:01:00:0\"
    Option \"AllowEmptyInitialConfiguration\"
EndSection

# Section \"Device\"
#     Identifier \"intel\"
#     Driver \"modesetting\"
#     BusID \"PCI:00:02:0\"
#     Option \"AllowEmptyInitialConfiguration\"
# EndSection" > /etc/X11/xorg.conf
    
    echo -e "text: \"#display-setup-script=/usr/local/bin/switch_nvidia.sh\" in /etc/lightdm/lightdm.conf has been UNCOMMENTED\n and \n /etc/X11/xorg.conf has been changed for NVIDIA GPU CARD"
    echo -e "\nIf you did NOT get Permission DENIED, Do NOT forget to run: systemctl restart lightdm.service\n"
    exit
    else
        echo -e "text: \"#display-setup-script=/usr/local/bin/switch_nvidia.sh\" was NOT FOUND in /etc/lightdm/lightdm.conf\n"
        echo -e "Configuration files may be already DONE for NVIDIA\n"
        exit
    fi;

# for intel video card
elif [ $opcao -eq 0 ] ; then
    LIGHTDISPLAY="$(grep '^display-setup-script=/usr/local/bin/switch_nvidia.sh' /etc/lightdm/lightdm.conf)"
    # echo $LIGHTDISPLAY
    if [ "$LIGHTDISPLAY" = display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh ]; then
        echo -e "text: \"display-setup-script=/usr/local/bin/switch_nvidia.sh\" was FOUND in /etc/lightdm/lightdm.conf\n"
        sed -i 's/display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh/\#display-setup-script\=\/usr\/local\/bin\/switch_nvidia.sh/g' /etc/lightdm/lightdm.conf
        echo -e "Section \"Module\"
    Load \"modesetting\"
EndSection\n
# Section \"Device\"
#     Identifier \"nvidia\"
#     Driver \"nvidia\"
#     BusID \"PCI:01:00:0\"
#     Option \"AllowEmptyInitialConfiguration\"
# EndSection

Section \"Device\"
    Identifier \"intel\"
    Driver \"modesetting\"
    BusID \"PCI:00:02:0\"
    Option \"AllowEmptyInitialConfiguration\"
EndSection" > /etc/X11/xorg.conf
        
        echo -e "text: \"display-setup-script=/usr/local/bin/switch_nvidia.sh\" has been COMMENTED in /etc/lightdm/lightdm.conf\n and\n /etc/X11/xorg.conf has been changed for INTEL GPU CARD"
        echo -e "\nIf you dit NOT get Permission DENIED, Do NOT forget to run: systemctl restart lightdm.service\n"
        exit
    else
        echo -e "text: \"display-setup-script=/usr/local/bin/switch_nvidia.sh\" was NOT FOUND in /etc/lightdm/lightdm.conf\n"
        echo -e "Configuration files may be already DONE for INTEL GPU\n"
        exit
    fi;
else
    echo Option NOT valid, script aborted
    exit
fi;

