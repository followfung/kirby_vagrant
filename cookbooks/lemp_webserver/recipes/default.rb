#
# Cookbook Name:: lemp_webserver
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Configure sshd: Disable password authentication and root login
openssh_server node['sshd']['config_file'] do
  cookbook 'lemp_webserver'
  source 'sshd_config.erb'
end