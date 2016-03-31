#
# Cookbook Name:: kirby_cli
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Clone down Kirby CLI repo from GitHub
git node['kirby']['cli']['src_path'] do
  repository node['kirby']['cli']['git_repo']
end
link "#{node['kirby']['cli']['bin_path']}/kirby" do
  to "#{node['kirby']['cli']['src_path']}/kirby"
end
execute 'Install Kirby CLI' do
  cwd node['kirby']['cli']['src_path']
  command 'composer install'
  creates "#{node['kirby']['cli']['src_path']}/composer.lock"
end
