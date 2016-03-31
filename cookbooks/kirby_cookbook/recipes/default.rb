#
# Cookbook Name:: kirby
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Install Kirby CLI
include_recipe 'kirby_cli'

# install and configure dependencies
include_recipe 'kirby::nginx'

# execute 'Install Kirby!' do
#   user node['kirby']['user']
#   group node['kirby']['group']
#   cwd node['nginx']['default_root']
#   command 'kirby install'
# end

kirby node['nginx']['default_root'] do
  action :install
end
