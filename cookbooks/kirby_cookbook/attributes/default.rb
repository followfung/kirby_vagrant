# Advanced configuration options. These are set to be the defaults
# from the Kirby docs. More info: https://getkirby.com/docs/cheatsheet#options
default['kirby']['options']['cache'] = false
default['kirby']['options']['cache.autoupdate'] = true
default['kirby']['options']['cache.driver'] = 'file'
default['kirby']['options']['cache.ignore'] = nil
default['kirby']['options']['cache.options'] = nil
default['kirby']['options']['content.file.extension'] = 'txt'
default['kirby']['options']['content.file.ignore'] = []

# TODO: Find a way to implement this???
# https://getkirby.com/docs/cheatsheet/options/css-handler
# default['kirby']['options']['css.handler'] = ???
default['kirby']['options']['date.handler'] = 'date'
default['kirby']['options']['debug'] = false
default['kirby']['options']['error'] = 'error'

# TODO: Find a way to implement this???
# https://getkirby.com/docs/cheatsheet/options/headers
# default['kirby']['options']['headers'] = []
default['kirby']['options']['home'] = 'home'

# TODO: Find a way to implement this???
# https://getkirby.com/docs/cheatsheet/options/js-handler
# default['kirby']['options']['js.handler'] = ???
default['kirby']['options']['kirbytext.image.figure'] = true
default['kirby']['options']['kirbytext.video.class'] = 'video'
default['kirby']['options']['kirbytext.video.height'] = false
default['kirby']['options']['kirbytext.video.width'] = false
default['kirby']['options']['language.detect'] = false
default['kirby']['options']['languages'] = []
default['kirby']['options']['license'] = 'put your license key here'
default['kirby']['options']['locale'] = 'en_US.UTF8'
default['kirby']['options']['markdown'] = true
default['kirby']['options']['markdown.breaks'] = true
default['kirby']['options']['markdown.extra'] = false

# TODO: Find a way to implement this???
# https://getkirby.com/docs/cheatsheet/options/markdown-parser
# default['kirby']['options']['markdown.parser'] = ???
default['kirby']['options']['panel.info.license'] = true
default['kirby']['options']['panel.info.versions'] = true
default['kirby']['options']['panel.kirbytext'] = true
default['kirby']['options']['panel.language'] = 'en'
default['kirby']['options']['panel.session.timeout'] = 120
default['kirby']['options']['panel.stylesheet'] = nil
default['kirby']['options']['rewrite'] = true
default['kirby']['options']['roles'] = []
default['kirby']['options']['routes'] = []
default['kirby']['options']['smartypants'] = false

# TODO: Find a way to implement this???
# https://getkirby.com/docs/cheatsheet/options/smartypants-parser
# default['kirby']['options']['smartypants.parser'] = ???
default['kirby']['options']['ssl'] = false
default['kirby']['options']['thumbs.driver'] = 'gd'
default['kirby']['options']['thumbs.filename'] = '{safeName}-{hash}.{extension}'
default['kirby']['options']['timezone'] = 'UTC'
default['kirby']['options']['tinyurl.enabled'] = true
default['kirby']['options']['tinyurl.folder'] = 'x'
default['kirby']['options']['url'] = false

############################################################
### Don't edit below here unless you are an expert!      ###
### Seriously, consider yourself warned.                 ###
############################################################

# nginx
default['nginx']['default_site_enabled'] = false
default['nginx']['www_dir'] = '/var/www'
default['nginx']['access_log'] = '/var/log/nginx/access.log'
default['nginx']['error_log'] = '/var/log/nginx/error.log'

# Kirby server configuration
default['kirby']['dir_name'] = 'kirby' # kirby web directory name
default['kirby']['install_type'] = 'local' # local or vagrant

default['kirby']['git_repo'] = 'git://github.com/getkirby/starterkit.git'

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
