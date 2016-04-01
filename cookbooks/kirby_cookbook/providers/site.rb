#
# Cookbook Name:: kirby
# Provider:: site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

def whyrun_supported?
  true
end

use_inline_resources

action :install do
  install_dir = "#{node['nginx']['default_root']}/#{new_resource.name}"

  execute "Install Kirby site to #{install_dir}" do
    cwd node['nginx']['default_root']
    user new_resource.user
    group new_resource.group
    command "kirby install #{new_resource.name}"
    creates "#{install_dir}/index.php"
  end
end
