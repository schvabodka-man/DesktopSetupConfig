#!/bin/sh
folder=$PWD

sh $folder/base-setup.sh

sh $folder/base-compilers.sh
sh $folder/basic-libs.sh

sh $folder/extra-repos.sh

sh $folder/cli-utils.sh
sh $folder/development.sh
sh $folder/gui-apps.sh

sh $folder/development-utils.sh
sh $folder/third-party-cli.sh

sh $folder/fonts.sh

sh $folder/fish-shell.sh
# sh $folder/vivaldi.sh
sh $folder/micro-editor.sh
sh $folder/browser-native-client.sh
sh $folder/ide.sh

# sh $folder/flatpaks.sh

sh $folder/docker-setup.sh

sh $folder/dns-settings.sh
sh $folder/restore-configs.sh
