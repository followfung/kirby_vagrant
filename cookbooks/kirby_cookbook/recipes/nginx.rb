#
# Cookbook Name:: kirby
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

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
