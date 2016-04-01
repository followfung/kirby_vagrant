#
# Cookbook Name:: kirby
# Provider:: site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

def whyrun_supported?
  true
end

action :install do
  wwwuser =  node['nginx']['user']
  wwwgroup = node['nginx']['group']
  install_dir = "#{node['nginx']['default_root']}/#{new_resource.name}"
  log_dir =     "#{node['nginx']['log_dir']}/#{new_resource.name}"

  # create log directory
  directory log_dir do
    recursive true
    owner wwwuser
    group wwwgroup
  end

  # enable nginx config for kirby
  nginx_site new_resource.name do
    template 'kirby.erb'
    variables(
      install_dir: install_dir,
      log_dir: log_dir
    )
    notifies :reload, 'service[nginx]', :delayed
  end

  execute "Install Kirby site to #{install_dir}" do
    cwd node['nginx']['default_root']
    user wwwuser
    group wwwgroup
    command "kirby install #{new_resource.name}"
    creates "#{install_dir}/index.php"
  end
end
