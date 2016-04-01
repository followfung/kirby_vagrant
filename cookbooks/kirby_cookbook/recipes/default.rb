#
# Cookbook Name:: kirby
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Set up the Kirby CLI so we can call it in other recipes
# Kirby CLI requires composer to be installed
include_recipe 'composer'

# Kirby CLI depends on the PHP Curl extensions
package 'php5-curl'

# Clone down Kirby CLI repo from GitHub
git node['kirby_cli']['src_path'] do
  repository node['kirby_cli']['git_repo']
end
link "#{node['kirby_cli']['bin_path']}/kirby" do
  to "#{node['kirby_cli']['src_path']}/kirby"
end
execute 'Install Kirby CLI' do
  cwd node['kirby_cli']['src_path']
  command 'composer install'
  creates "#{node['kirby_cli']['src_path']}/composer.lock"
end
