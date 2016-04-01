#
# Cookbook Name:: kirby
# Recipe:: install_site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Make sure the Kirby CLI is installed
include_recipe 'kirby::default'

node['kirby']['sites'].each do |site, site_params|
  kirby_site site do
    params site_params
  end
end

# For some reason the nginx cookbook doesn't reload the
# service after  updating configs. We force the reload here.
service 'nginx' do
  action :reload
end
