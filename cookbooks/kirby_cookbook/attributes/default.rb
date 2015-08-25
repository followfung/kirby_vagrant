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

# If provisioning on a Vagrant VM, set this to where your
# shared folder is mounted, usually this will be /vagrant
default['kirby']['vagrant_share'] = nil

############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

# Server configuration
default['kirby']['dir_name'] = 'kirby' # kirby web directory name

# PHP packages required for Kirby
default['php']['packages'] = %w(
  php5
  php5-fpm
)

# nginx
default['nginx']['www_dir'] = '/var/www'
default['nginx']['default_site_enabled'] = false
default['nginx']['access_log'] = '/var/log/nginx/access.log'
default['nginx']['error_log'] = '/var/log/nginx/error.log'
