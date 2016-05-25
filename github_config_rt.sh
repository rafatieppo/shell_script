#!/bin/bash

#config-git-github.sh: instala o git, ssh, e importa configurações
#pessoais dos repositórios do GitLab/GitHub, e coloca nos lugares apropriados.
#(Verifique os repositórios do Git antes de instalar, e altere para qualquer outro
#que queira ou não execute essas opções).
#Deve ser rodado como usuário normal, mas a senha de root será necessária
#em algumas etapas.
#Desenvolvido por @arnaldorusso
#Adaptado por @rafatieppo


echo -------------------------------------------------------------------
echo Instalar git e ssh? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    sudo apt-get install -y git git-core git-man git-gui git-doc \
	ssh openssh-server openssh-client
fi

echo -------------------------------------------------------------------
echo Configurar Git e GitHub? [ 1/0 ]
echo -------------------------------------------------------------------
read opcao
if [ $opcao -eq 1 ] ; then
    echo
    echo Copiando arquivo de configuração do git, .gitconfig
    echo
    cp .gitconfig ~/
    echo
    echo Copiando .gitignore global
    echo
    cp .gitignore ~/
    echo
    echo Gerando chaves ssh
    ssh-keygen -t rsa -C "rafaeltieppo@yahoo.com.br"
    echo
    echo Instalando xclip
    sudo apt-get install -y xclip
    echo
    echo Copiando o conteudo de ~/.ssh/id_rsa.pub para o clipboard
    xclip -sel clip < ~/.ssh/id_rsa.pub
    echo
    echo ATENCAO
    echo -------
    echo Entre na sua conta do GitHub e cole esse conteudo em
    echo https://github.com/settings/ssh
    echo
    echo Pronto? [ 1/0 ]
    read pronto
    if [ $pronto -eq 1 ] ; then
        echo Confirmando a adicao da chave com ssh-add
        ssh-add
        echo
        echo Conferindo a conexao com github.com
        echo ssh -T git@github.com
        ssh -T git@github.com
    fi
    echo
    echo Git e GitHub configurados!
    echo
fi

exit
