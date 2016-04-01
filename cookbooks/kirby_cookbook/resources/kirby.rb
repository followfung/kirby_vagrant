#
# Cookbook Name:: kirby
# Resource:: kirby
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

default_action :install
actions :install

attribute :install_dir, kind_of: String, name_attribute: true
attribute :user, kind_of: String, default: node['kirby_cli']['user']
attribute :group, kind_of: String, default: node['kirby_cli']['group']

provides :kirby
