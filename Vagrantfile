# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = 'ubuntu/trusty64'

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  config.vm.network 'forwarded_port', guest: 80, host: 8080

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  config.vm.provider 'virtualbox' do |vb|
    vb.customize ['modifyvm', :id, '--memory', '1024']
    vb.customize ['modifyvm', :id, '--cpus', '2']
    vb.customize ['modifyvm', :id, '--ioapic', 'on']
  end

  # Enable Berkshelf
  config.berkshelf.enabled = true

  # Lock Chef version to 12.4.0
  config.omnibus.chef_version = '12.4.0'

  # Provision with chef_solo
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      kirby: {
        url: 'http://localhost:8080',
        install_type: 'vagrant'
      }
    }

    chef.add_recipe 'lemp_webserver'
  end
end
