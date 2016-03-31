#
# Cookbook Name:: kirby
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# enable nginx config for kirby
nginx_site 'kirby' do
  template 'kirby.erb'
  notifies :reload, 'service[nginx]', :delayed
end

# create log directory
directory node['kirby']['log_dir'] do
  recursive true
  owner node['nginx']['user']
  group node['nginx']['group']
end
