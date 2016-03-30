#
# Cookbook Name:: lemp_webserver
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# install git
package 'git'

# install php
include_recipe 'php'
include_recipe 'composer'

# # install nginx
# include_recipe 'nginx'

# # Create and start MySQL instance
# mysql_service 'default' do
#   bind_address '127.0.0.1'
#   version '5.6'
#   initial_root_password 'please change me'
#   action [:create, :start]
#   not_if { node['lemp_webserver']['skip_mysql'] }
# end

# # Configure sshd: Disable password authentication and root login
# openssh_server node['sshd']['config_file'] do
#   cookbook 'lemp_webserver'
#   source 'sshd_config.erb'
# end

# # Configure firewall
# firewall 'default' do
#   action :install
# end

# # Allow SSH so we don't lock ourselves out
# firewall_rule 'ssh' do
#   port     22
#   command  :allow
#   action :create
# end

# # Allow HTTP
# firewall_rule 'http' do
#   port     80
#   command  :allow
#   action :create
# end

# php_fpm_pool 'default' do
#   action :install
# end
