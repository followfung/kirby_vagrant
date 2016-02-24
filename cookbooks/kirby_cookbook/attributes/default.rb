# Kirby application settings
default['kirby']['license'] = 'put your license key here'
default['kirby']['url'] = nil

default['kirby']['site_title'] = 'Kirby Starterkit'
default['kirby']['site_author'] = 'Bastian Allgeier GmbH'
default['kirby']['site_description'] = 'This is Kirby\'s Starterkit.'
default['kirby']['site_keywords'] = 'Kirby, CMS, file-based'
default['kirby']['site_copyright_from'] = '2009'
default['kirby']['site_copyright_link'] = 'http://getkirby.com'
default['kirby']['site_copyright_text'] = 'Kirby'

############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

# nginx
default['nginx']['www_dir'] = '/var/www'
default['nginx']['default_site_enabled'] = false
default['nginx']['access_log'] = '/var/log/nginx/access.log'
default['nginx']['error_log'] = '/var/log/nginx/error.log'

# Kirby server configuration
default['kirby']['dir_name'] = 'kirby' # kirby web directory name
default['kirby']['install_type'] = 'local' # local or vagrant

# If provisioning on a Vagrant VM, set this to where your
# shared folder is mounted, usually this will be /vagrant
default['kirby']['nginx_server_name'] = 'localhost'
default['kirby']['vagrant_share'] = '/vagrant'

############################################################
### Never edit below here even if you are an expert!     ###
### You'll probably break everything.                    ###
############################################################

default['kirby']['kirby_root'] = "#{node['nginx']['www_dir']}/#{node['kirby']['dir_name']}"

case node['kirby']['install_type']
when 'local'
  default['kirby']['install_path'] = "#{node['nginx']['www_dir']}/#{node['kirby']['dir_name']}"
when 'vagrant'
  default['kirby']['install_path'] = "#{node['kirby']['vagrant_share']}/#{node['kirby']['dir_name']}"
end
