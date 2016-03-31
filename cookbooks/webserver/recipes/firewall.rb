#
# Cookbook Name:: webserver
# Recipe:: firewall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Configure firewall
firewall 'default' do
  action :install
end

# Allow SSH so we don't lock ourselves out
firewall_rule 'ssh' do
  port    22
  command :allow
  action  :create
end

# Allow HTTP
firewall_rule 'http' do
  port    80
  command :allow
  action  :create
end

# Allow HTTPS
firewall_rule 'https' do
  port    443
  command :allow
  action  :create
end
