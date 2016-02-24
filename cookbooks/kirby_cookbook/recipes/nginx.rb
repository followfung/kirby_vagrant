#
# Cookbook Name:: kirby
# Recipe:: nginx
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# enable nginx config for kirby
nginx_site 'kirby' do
  template 'kirby.erb'
end

# Reload nginx because nginx_site doesnt?
service 'nginx' do
  action :reload
end

directory node['nginx']['www_dir'] do
  recursive true
  owner 'www-data'
  group 'www-data'
end
