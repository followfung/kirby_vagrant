#
# Cookbook Name:: kirby_cookbook
# Recipe:: php
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# install and configure php
package node['php']['packages']
service 'php5-fpm' do
  service_name 'php5-fpm'
  supports start: true, stop: true, restart: true, reload: true
  action [:enable, :start]
end
