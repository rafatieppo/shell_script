--- 
title: A guide to install linux hardware 
author: Rafael Tieppo 
date: 2020-05-21
--- 


# Graphic card

Tool to verify VGA

```
lspci
lspci -nn | grep VGA
lspci -k | grep -EA3 'VGA|Display'
lspci -nnk | grep -i -EA3 "3d|display|vga"
```

## AMD

There are 4 drivers: [source](https://diolinux.com.br/2019/09/tudo-sobre-drivers-amd-no-linux.html)

- Mesa Driver: O Mesa Driver ou Mesa3D é uma implementação para APIs
gráficas multiplataforma que trabalha com os drivers Open Source dos
chips gráficos da AMD, Intel e Nvidia. No Linux o Mesa Driver é
responsável por implementar – leia-se: pôr para funcionar – as APIs
gráficas OpenGL e Vulkan. 
- Radeon: Este é o driver de vídeo Open Source legado para GPUs
AMD. Sendo assim, é o driver utilizado nos chips mais antigos da
marca. Todas as placas de vídeo das séries Radeon HD 2000, 3000, 4000,
5000, 6000, 7000 e 8000, bem como alguns modelos das séries R5, R7 e R9
utilizam este driver por padrão em todas as distribuições Linux. Além de
geralmente o driver Radeon possuir um desempenho inferior ao seu
sucessor (o Amdgpu**, este também não possui suporte a API Vulkan 
- Amdgpu: O ‘amdgpu’ é o driver de vídeo Open Source mais recente para
AMD, sendo o padrão para todas as placas mais atuais da marca. Possui
suporte completo a Vulkan e é o driver que possui o melhor desempenho em
jogos. 
- Amdgpu-pro: O ‘amdgpu-pro’ está incluso no pacote ‘Radeon Software’, e
é aquele driver que pode ser baixado no site da AMD, porém, este não vem
instalado por padrão em nenhuma das principais distros. 

### How to know what driver is installed?
```
lspci -k | grep radeon
lspci -k | grep amdgpu
``` 
It returns kernels driver and modules

### How to install AMD drivers

- Debian [source](https://linuxconfig.org/how-to-install-the-latest-amd-drivers-on-debian-10-buster)
    - non free rep
```
deb http://deb.debian.org/debian/ buster main non-free contrib
deb-src http://deb.debian.org/debian/ buster main non-free contrib
deb http://security.debian.org/debian-security buster/updates main contrib non-free
deb-src http://security.debian.org/debian-security buster/updates main contrib non-free
```
    - drivers
````
apt install firmware-linux firmware-linux-nonfree libdrm-amdgpu1
xserver-xorg-video-amdgpu 
```

### How to Install Vulkan

Vulkan support isn't strictly necessary, but with the widening support
that its receiving in the gaming world. 
```
apt install mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-utils
vulkan-validationlayers 
```

### How to Install OpenCL

If you plan on using OpenCL with your AMD card too, you should include
support for it. However, if you're just using it for basic tasks, the
Mesa support will suffice. 

```
apt install mesa-opencl-icd
```

### How to activate Amdgpu

1. Its necessary change grub config:

```
nano /etc/default/grub
```

At line `GRUB_CMDLINE_LINUX` and **between quotes**, insert the text: 
```
radeon.cik_support=0 amdgpu.cik_support=1 radeon.si_support=0 amdgpu.si_support=1
```

2. Update grub

``` 
# Linux Mint, Ubuntu ... :
sudo update-grub
# Fedora:
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
# Manjaro, Arch ...:
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

3. Reboot

## Nvidia

- Debian
[source](https://superuser.com/questions/1484109/debian-10-hybrid-graphics-how-to-use-nvidia-drivers-instead-of-nouveau)
and [source](https://linuxconfig.org/how-to-install-nvidia-driver-on-debian-10-buster-linux)
    0. Enable non-free repository
    `/etc/apt/sources.list`
    - if is NOT **freezing** jump to 5
    - if is **freezing** the problem us NEUVOU - JUST edit if you have that files:
    1. nano /etc/modprobe.d/blacklist.conf :
    ```
    blacklist nouveau
    blacklist lbm-nouveau
    options nouveau modeset=0
    alias nouveau off
    alias lbm-nouveau off
    ```
    2. nano /etc/default/grub and add the nouveau.modeset=0 part :
    ```
    GRUB_CMDLINE_LINUX_DEFAULT="nouveau.modeset=0 quiet"
    ```
    3. vim /etc/modprobe.d/nouveau-kms.conf :
    ```
   options nouveau modeset=0
   GRUB_CMDLINE_LINUX_DEFAULT="nouveau.modeset=0 quiet"
   ```
   4. update grub and reboot
   ```
   update-grub
   reboot
   ```
   5. Install nvidia-detect utility by execution of the below command: 
   `apt -y install nvidia-detect`
   6. Detect your Nvidia card model and suggested Nvidia driver. To do so execute the above installed nvidia-detect command
   `nvidia-detect`
   7. As suggested install the recommended driver by the previous step:
   `apt-get install nvidia-driver`
   8. Reboot
   `systemctl reboot`

## OpenGL

```
glxinfo | grep "OpenGL renderer"   o glxinfo é do pacote mesa-utils
lspci | fgrep 'VGA compatible controller' 
glxinfo | fgrep Device
glxgears -info # testa frames/s
xrandr --listproviders
```


# wifi card

- List lan `iwconfig`
- obtain IP: `sudo dhclient -v wlan0`

## config wifi [source](https://unix.stackexchange.com/questions/92799/connecting-to-wifi-network-through-command-line)

- option 1: edit `/etc/network/interfaces` and write:
```
auto wlan0
iface wlan0 inet dhcp 
                wpa-ssid {ssid}
                wpa-psk  {password}
```

**Replace {ssid} and {password} with your respective WiFi SSID and
password**.

After that write and close file and use command: `sudo dhclient wlan0`

- option 2:

Provided you replace your Wireless network card, Wi-Fi Network name, and
Wi-FI Password this should also work. I am using: - Wireless network
card is wlan0 - Wireless network is "Wifi2Home" - Wireless network key
is ASCII code ABCDE12345 

First, get your WiFi card up and running: `sudo ifconfig wlan0 up`

Now scan for a list of WiFi networks in range: `sudo iwlist wlan0 scan`

This will show you a list of wireless networks, pick yours from the
list:  `sudo iwconfig wlan0 essid Wifi2Home key s:ABCDE12345`

To obtain the IP address, now request it with the Dynamic Host Client:
`sudo dhclient wlan0` 

You should then be connected to the WiFi network. The first option is
better, because it will be able to run as a cron job to start up the
wifi whenever you need it going. If you need to turn off your WiFi for
whatever reason, just type: `sudo ifconfig wlan0 down`

- option 3: FYI

I have also seen people using alternative commands. I use Debian,
Solaris and OSX, so I'm not 100% sure if they are the same on
Ubuntu. But here they are: 
```
sudo ifup wlan0 # is the same as sudo ifconfig wlan0 up
sudo ifdown wlan0 # is the same as sudo ifconfig wlan down
 ```

## Solution to Unmanaged network issue on Debian Linux

In case you wish to manage your system network via NetworkManager this
is how you can do it: Edit NetworkManager configuration file
`/etc/NetworkManager/NetworkManager.conf`. 

Open the file with administrative privileges and change the following
stanza: FROM: 
```
[ifupdown]
managed=false

# TO:

[ifupdown]
managed=true
 ```
Restart network manager: `systemctl restart network-manager`
 
 
 
