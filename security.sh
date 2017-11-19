#!/bin/sh
ssh-add id_rsa
gpg2 --import scvhapps@gmail.com.asc
#trust and shit
gpg2 --edit-key "scvhapps@gmail.com.asc"
cp password-store/ ~/.password-store/
