# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = ENV['DISTRIBUTION']
  # config.vm.synced_folder "/Users/stefanpapp/workspace", "/workspace"
  config.vm.hostname = ENV['HOSTNAME'] 
  config.vm.provider ENV['PROVIDER'] do |v|
        v.memory = 4096
        v.cpus = 2
        v.name = ENV['HOSTNAME']
  end

  config.vm.provision "shell", path: "./provision.sh"
end
