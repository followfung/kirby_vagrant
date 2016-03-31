# Kirby CLI stuff
default['kirby_cli']['git_repo'] = 'git://github.com/getkirby/cli.git'
default['kirby_cli']['src_path'] = '/usr/local/src/kirby_cli'
default['kirby_cli']['bin_path'] = '/usr/local/bin'

default['kirby_cli']['user'] = node['nginx']['user'] || node['kirby_cli']['user']
default['kirby_cli']['group'] = node['nginx']['group'] || node['kirby_cli']['group']
