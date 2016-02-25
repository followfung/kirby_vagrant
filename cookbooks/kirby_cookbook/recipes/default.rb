#
# Cookbook Name:: kirby
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# install and configure dependencies
include_recipe 'kirby::nginx'

# grab Kirby Starterkit from GitHub
git node['kirby']['install_path'] do
  repository node['kirby']['git_repo']
  enable_submodules true
end

# symlink Kirby directory to Vagrant shared folder
link node['kirby']['kirby_root'] do
  to node['kirby']['install_path']
  only_if { node['kirby']['install_type'].eql?('vagrant') }
end

# give www-data user permissions over Kirby directory
execute "give www-data ownership of #{node['kirby']['kirby_root']}" do
  command "chown -R www-data:www-data #{node['kirby']['kirby_root']}"
end

# install Kirby config file
template "#{node['kirby']['kirby_root']}/site/config/config.php" do
  source 'config.php.erb'
end