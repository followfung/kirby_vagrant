#
# Cookbook Name:: kirby_cli
# Provider:: kirby
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

def whyrun_supported?
  true
end

use_inline_resources

action :install do
  execute "Install Kirby to #{new_resource.install_dir}" do
    cwd new_resource.install_dir
    user new_resource.user
    group new_resource.group
    command 'kirby install'
  end
end
