#
# Cookbook Name:: kirby
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Install Kirby CLI
include_recipe 'kirby_cli'

# install and configure dependencies
include_recipe 'kirby::nginx'

# Install Kirby!
kirby node['nginx']['default_root'] do
  action :install
end
