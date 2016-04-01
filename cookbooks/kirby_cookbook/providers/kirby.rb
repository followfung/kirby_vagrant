#
# Cookbook Name:: kirby
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
    creates "#{new_resource.install_dir}/kirby/index.php"
  end
end
