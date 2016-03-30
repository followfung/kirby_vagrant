############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

# Kirby CLI stuff
default['kirby']['cli']['git_repo'] = 'git://github.com/getkirby/cli.git'
default['kirby']['cli']['src_path'] = '/usr/local/src/kirby_cli'
default['kirby']['cli']['bin_path'] = '/usr/local/bin'

default['kirby']['log_dir'] = "#{node['nginx']['log_dir']}/kirby"
default['kirby']['default_root'] = "#{node['nginx']['default_root']}/kirby"
default['kirby']['server_name'] = 'localhost'

# nginx
default['nginx']['default_site_enabled'] = false
