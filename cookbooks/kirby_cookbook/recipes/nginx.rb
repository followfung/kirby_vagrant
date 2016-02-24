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

directory node['nginx']['www_dir'] do
  recursive true
  owner 'www-data'
  group 'www-data'
end
