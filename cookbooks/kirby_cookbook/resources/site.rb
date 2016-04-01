#
# Cookbook Name:: kirby
# Resource:: site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

default_action :install
actions :install

attribute :params, kind_of: Hash

provides :kirby_site
