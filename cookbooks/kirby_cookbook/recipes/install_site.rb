#
# Cookbook Name:: kirby
# Recipe:: install_site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Make sure the Kirby CLI is installed
include_recipe 'kirby::default'

# create log directory
directory node['kirby']['log_dir'] do
  recursive true
  owner node['kirby']['user']
  group node['kirby']['group']
end

# enable nginx config for kirby
nginx_site 'kirby' do
  template 'kirby.erb'
  notifies :reload, 'service[nginx]', :delayed
end

# Install Kirby!
kirby node['nginx']['default_root'] do
  action :install
end
