--- 
title: Instruções para instalação Ubuntu
author: Rafael Tieppo 
date: 2025 
--- 

# Versão ubuntu

- Ubuntu 24.04.2 LTS
- [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)

# Particionamento

- particao **Raiz** Btrfs 120 GB "/"
- automaticamente ele cria uma particao boot/efi FAT32
- swap ver tabela
- "/home" com o que sobrar EXT4

## How much swap do I need? SWAP MEMORY

[https://help.ubuntu.com/community/SwapFaq](https://help.ubuntu.com/community/SwapFaq)

For less than 1GB of physical memory (RAM), it's highly recommended that the swap space should, as a base minimum, be equal to the amount of RAM. Also, it's recommended that the swap space is maximum twice the amount of RAM depending upon the amount of hard disk space available for the system because of diminishing returns.

For more modern systems (>1GB), your swap space should be at a minimum be equal to your physical memory (RAM) size "if you use hibernation", otherwise you need a minimum of round(sqrt(RAM)) and a maximum of twice the amount of RAM. The only downside to having more swap space than you will actually use, is the disk space you will be reserving for it.

The "diminishing returns" means that if you need more swap space than twice your RAM size, you'd better add more RAM as Hard Disk Drive (HDD) access is about 10³ slower then RAM access, so something that would take 1 second, suddenly takes more then 15 minutes! And still more than a minute on a fast Solid State Drive (SSD)..

Example Scenarios (last 3 columns denote swap space).

| RAM   | No hibernation | With Hibernation | Maximum |
|-------|----------------|------------------|---------|
| 256MB | 256MB          | 512MB            | 512MB   |
| 512MB | 512MB          | 1024MB           | 1024MB  |
| 024MB | 1024MB         | 2048MB           | 2048MB  |
|       |                |                  |         |
| RAM   | No hibernation | With Hibernation | Maximum |
|-------|----------------|------------------|---------|
| 1GB   | 1GB            | 2GB              | 2GB     |
| 2GB   | 1GB            | 3GB              | 4GB     |
| 3GB   | 2GB            | 5GB              | 6GB     |
| 4GB   | 2GB            | 6GB              | 8GB     |
| 5GB   | 2GB            | 7GB              | 10GB    |
| 6GB   | 2GB            | 8GB              | 12GB    |
| 8GB   | 3GB            | 11GB             | 16GB    |
| 12GB  | 3GB            | 15GB             | 24GB    |
| 16GB  | 4GB            | 20GB             | 32GB    |
| 24GB  | 5GB            | 29GB             | 48GB    |
| 32GB  | 6GB            | 38GB             | 64GB    |
| 64GB  | 8GB            | 72GB             | 128GB   |
| 128GB | 11GB           | 139GB            | 256GB   |
| 256GB | 16GB           | 272GB            | 512GB   |
| 512GB | 23GB           | 535GB            | 1TB     |
| 1TB   | 32GB           | 1056GB           | 2TB     |
| 2TB   | 46GB           | 2094GB           | 4TB     |
| 4TB   | 64GB           | 4160GB           | 8TB     |
| 8TB   | 91GB           | 8283GB           | 16TB    |

# nvidia 

- caso não tenha reconhecido a placa na instalação:
    - ir para driver opcinais
    - Escolher o mais recente, Se for RTX escolher OPEN KERNEL 

# BRTFS para manutencao sistema (nao deu certo)

- `apt install btrfs-assistant`

configuracoes, abrir a gui Btrfs e criar configuracao:
- select config: root
- Config name: root
- Backup path: /

tambem é possível usar Brtfs assintant pelo terminas (em caso de emergência).

# Melhoria nos recursos audio e video

Caso prentenda-se realizar *Edicao de áudio e video*:

`apt instal ubuntustudio-installer`

- posteriormente abrir o `ubuntustudio-installer` na GUI e marcar as duas primeiras opções: 
    - `adds lowlatency kernel as boot default id available`
    - `Under-the-hood tweks for Ubuntu Studio Performance` 
- depois no menu executar  `Ubuntu Studio auto Configuration`


