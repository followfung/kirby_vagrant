#
# Cookbook Name:: kirby_cookbook
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

# for some reason nginx cookbook doesn't create this directory?
directory '/var/www' do
  recursive true
end
