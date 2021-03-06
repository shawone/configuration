Vagrant.require_version ">= 1.5.3"

VAGRANTFILE_API_VERSION = "2"

MEMORY = 4096
CPU_COUNT = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.ssh.insert_key = true
  config.vm.synced_folder  ".", "/vagrant", disabled: true
  config.vm.network :private_network, ip: "192.168.33.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", MEMORY.to_s]

    # You can adjust this to the amount of CPUs your system has available
    vb.customize ["modifyvm", :id, "--cpus", CPU_COUNT.to_s]

    # Allow DNS to work for Ubuntu 12.10 host
    # http://askubuntu.com/questions/238040/how-do-i-fix-name-service-for-vagrant-client
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  # Make LC_ALL default to en_US.UTF-8 instead of en_US.
  # See: https://github.com/mitchellh/vagrant/issues/1188
  config.vm.provision "shell", inline: 'echo \'LC_ALL="en_US.UTF-8"\' > /etc/default/locale'

  config.vm.provision :ansible do |ansible|
    # point Vagrant at the location of your playbook you want to run
    ansible.playbook = "./playbooks/vagrant.yml"
    ansible.verbose = "vvv"
  end
end