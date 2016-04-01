#
# Cookbook Name:: kirby
# Recipe:: install_site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Make sure the Kirby CLI is installed
include_recipe 'kirby::default'

# enable nginx config for kirby
nginx_site 'kirby' do
  template 'kirby.erb'
  notifies :reload, 'service[nginx]', :delayed
end

# Install Kirby
kirby_site 'kirby'
