Requirements
------------
* [ChefDK](https://downloads.chef.io/chef-dk/)
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://vagrantup.com)
* vagrant-berkshelf plugin
* vagrant-omnibus plugin
* vagrant-hostsupdater plugin

This configuration was developed with the following configuration, but later versions should probably work!
* ChefDK `v0.5.1`
* VirtualBox `v4.3.26`
* Vagrant `v1.7.2`
* vagrant-berkshelf `v4.0.4`
* vagrant-omnibus `v1.4.1`

## Known Issues
* On Windows machines, sometimes the hostsupdater plugin can't update the hosts file because of permissions. If this happens you should update it manually.

## Usage
1. `git clone https://github.com/followfung/kirby_vagrant && cd kirby_vagrant`
2. `vagrant up`
3. Visit http://vagrant.dev to see your Kirby instance in action!