############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

default['kirby']['log_dir'] = "#{node['nginx']['log_dir']}/kirby"
default['kirby']['default_root'] = "#{node['nginx']['default_root']}/kirby"
default['kirby']['server_name'] = 'localhost'

default['kirby']['user'] = node['nginx']['user'] || node['kirby']['user']
default['kirby']['group'] = node['nginx']['group'] || node['kirby']['group']
