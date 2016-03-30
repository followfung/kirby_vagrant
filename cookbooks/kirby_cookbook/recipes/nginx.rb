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

# create public web directory
directory node['kirby']['kirby_root'] do
  recursive true
  owner node['nginx']['user']
  group node['nginx']['user']
end
