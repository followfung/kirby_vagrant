# Kirby application settings
default['kirby']['kirby_url'] = nil
default['kirby']['kirby_license'] = 'put your license key here'

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
