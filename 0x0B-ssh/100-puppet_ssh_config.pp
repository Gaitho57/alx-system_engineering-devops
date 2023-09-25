#!/usr/bin/env bash
# puppet makes changes to configuration file

file {  'ect/ssh/ssh_config':
         ensure  => present,

content =>"

  #SSH client configuration
  host*
  IdentifyFile ~/.ssh/school
  passwordAuthentification no
  ",
}
