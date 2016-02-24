Vagrant.configure(2) do |config|
  # Configuration variables for this VM
  conf = {
    vm_box: 'ubuntu/trusty64', 
    private_network_ip: '192.168.33.10',
    vm_hostname: 'vagrant.dev', 
    vm_memory: 4096,
    vm_cpus: 2,
    chefdk_version: '0.8.0'
  }

  config.vm.box = conf[:vm_box]

  config.ssh.forward_agent = true
  config.vm.box_check_update = true

  config.vm.hostname = conf[:vm_hostname]
  config.vm.network 'private_network', ip: conf[:private_network_ip]

  if Vagrant.has_plugin?('vagrant-hostsupdater')
    config.hostsupdater.remove_on_suspend = true
  end

  config.vm.provider 'virtualbox' do |vb|
    vb.name = conf[:vm_hostname]
    vb.memory = conf[:vm_memory]
    vb.cpus = conf[:vm_cpus]

    vb.customize ['modifyvm', :id, '--ioapic', 'on'] if conf[:vm_cpus] > 1
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
  end

  config.berkshelf.enabled = true # enable berkshelf
  config.omnibus.chef_version = '12.3.0' # version pin 12.3.0

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      kirby: {
        url: 'http://' + conf[:vm_hostname],
        install_type: 'vagrant',
        nginx_server_name: conf[:vm_hostname]
      }
    }

    chef.add_recipe 'php'
    chef.add_recipe 'nginx'
    chef.add_recipe 'lemp_webserver'
    chef.add_recipe 'kirby'
  end
end
