name             'webserver'
maintainer       'Patrick Fung'
maintainer_email 'patrick@makestuffdostuff.com'
license          'All rights reserved'
description      'Installs and configures services required for a basic webserver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'sshd', '~> 1.1.3'
depends 'firewall', '~> 2.4.0'
depends 'php', '~> 1.7.2'
depends 'nginx', '~> 2.7.6'
depends 'mysql', '~> 6.1.2'
