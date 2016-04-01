############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

default['kirby']['log_dir'] = "#{node['nginx']['log_dir']}/kirby"
default['kirby']['default_root'] = "#{node['nginx']['default_root']}/kirby"
default['kirby']['server_name'] = 'localhost'

default['kirby']['user'] = node['nginx']['user'] || node['kirby']['user']
default['kirby']['group'] = node['nginx']['group'] || node['kirby']['group']

# Kirby CLI stuff
default['kirby_cli']['git_repo'] = 'git://github.com/getkirby/cli.git'
default['kirby_cli']['src_path'] = '/usr/local/src/kirby_cli'
default['kirby_cli']['bin_path'] = '/usr/local/bin'

default['kirby_cli']['user'] = node['nginx']['user'] || node['kirby_cli']['user']
default['kirby_cli']['group'] = node['nginx']['group'] || node['kirby_cli']['group']
