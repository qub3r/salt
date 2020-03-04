# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "bento/ubuntu-16.04"
    master.vm.hostname = "master.internal"
    master.vm.network "private_network", ip: "10.0.1.10", netmask: "24", virtualbox__intnet: "saltnetwork"
    master.vm.provision :shell, path: "bootstrap.sh"
    master.vm.provision :shell, path: "bootstrap.master.sh"
  end
  config.vm.define "minion01" do |minion01|
    minion01.vm.box = "bento/ubuntu-16.04"
    minion01.vm.hostname = "minion01.internal"
    minion01.vm.network "private_network", ip: "10.0.1.20", netmask: "24", virtualbox__intnet: "saltnetwork"
    minion01.vm.provision :shell, path: "bootstrap.sh"
    minion01.vm.provision :shell, path: "bootstrap.minion.sh"
  end
end
