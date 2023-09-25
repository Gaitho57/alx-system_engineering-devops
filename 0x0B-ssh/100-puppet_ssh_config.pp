#!/usr/bin/env bash
# puppet makes changes to configuration file

file {  'etc/ssh/ssh_config':
         ensure  => present,

content =>"

  #SSH client configuration
  host*
  IdentifyFile ~/.ssh/school
  passwordAuthentification no
  ",
}
