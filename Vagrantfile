Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.2"
  # turn off default vagrant folder
  config.vm.synced_folder ".", "/vagrant", disabled: true
  # set the parent folder up as the new /vagrant folder
  config.vm.synced_folder "../", "/vagrant"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/vagrant.yml"
    ansible.sudo = true
    ansible.sudo_user = "root"
  end
end
