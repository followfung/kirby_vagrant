Requirements
------------
* [ChefDK](https://downloads.chef.io/chef-dk/)
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://vagrantup.com)
* vagrant-berkshelf plugin
* vagrant-omnibus plugin
* vagrant-hostsupdater plugin

This configuration was developed with the following configuration, but later versions should probably work!
* ChefDK `v0.11.2`
* VirtualBox `v5.0.16`
* Vagrant `v1.8.2`
* vagrant-berkshelf `v4.1.0`
* vagrant-omnibus `v1.4.1`
* vagrant-hostupdater `v1.0.2`

## Known Issues
* On Windows machines, sometimes the hostsupdater plugin can't update the hosts file because of permissions. If this happens you should update it manually.

## Usage
1. `git clone https://github.com/followfung/kirby_vagrant && cd kirby_vagrant`
2. `vagrant up`
3. Visit http://vagrant.dev to see your Kirby instance in action!