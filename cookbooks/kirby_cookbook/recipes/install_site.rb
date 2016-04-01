#
# Cookbook Name:: kirby
# Recipe:: install_site
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Make sure the Kirby CLI is installed
include_recipe 'kirby::default'

# Install Kirby
kirby_site 'kirby'
