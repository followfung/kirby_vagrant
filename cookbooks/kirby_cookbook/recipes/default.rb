#
# Cookbook Name:: kirby_cookbook
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# install and configure dependencies
package 'git'
include_recipe 'kirby_cookbook::php'
include_recipe 'nginx'
include_recipe 'kirby_cookbook::nginx'

# this is the root directory of kirby
kirby_dir = "#{node['nginx']['www_dir']}/#{node['kirby']['dir_name']}"

# grab kirby starterkit from git
if node['kirby']['vagrant_share']
  # install Kirby to Vagrant shared folder
  execute 'clone kirby starterkit from git' do
    command "git clone --recursive https://github.com/getkirby/starterkit.git #{node['kirby']['dir_name']}"
    cwd node['kirby']['vagrant_share']
    user 'vagrant'
  end

  # symlink Kirby directory to Vagrant shared folder
  link kirby_dir do
    to "#{node['kirby']['vagrant_share']}/#{node['kirby']['dir_name']}"
    owner 'www-data'
    group 'www-data'
  end
else
  # install Kirby locally
  execute 'clone kirby starterkit from git' do
    command "git clone --recursive https://github.com/getkirby/starterkit.git #{node['kirby']['dir_name']}"
    cwd node['nginx']['www_dir']
  end

  # give www-data user permissions over Kirby directory
  execute 'change permissions' do
    command "chown -R www-data:www-data #{kirby_dir}"
  end
end

# install Kirby config file
template "#{kirby_dir}/site/config/config.php" do
  source 'config.php.erb'
end
