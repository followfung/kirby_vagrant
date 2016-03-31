#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# install git
package 'git'

# install php
include_recipe 'php'

# install and activate php-fpm
php_fpm_pool 'default' do
  action :install
end

# install nginx
include_recipe 'nginx'

# create public web directory
directory node['nginx']['default_root'] do
  recursive true
  owner node['nginx']['user']
  group node['nginx']['group']
end

# Configure sshd: Disable password authentication and root login
openssh_server node['sshd']['config_file'] do
  cookbook 'webserver'
  source 'sshd_config.erb'
end

# Configure firewall
include_recipe 'webserver::firewall'
