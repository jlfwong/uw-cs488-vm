# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Change these to be whatever files you want to have inside of the VM
  config.vm.synced_folder "/Users/jlfwong/dotfiles", "/home/vagrant/dotfiles"
  config.vm.synced_folder "/Users/jlfwong/.oh-my-zsh", "/home/vagrant/.oh-my-zsh"
  config.vm.synced_folder "/Users/jlfwong/Dropbox/School/4A/CS488/uwcs_cs488", "/home/vagrant/cs488"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "init.pp"
  end
end
