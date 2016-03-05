$script = <<SCRIPT
    locale-gen en_GB.UTF-8
    apt-get --assume-yes update
    apt-get --assume-yes dist-upgrade

    # https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-on-ubuntu-12-04-lts-precise-pangolin-with-rvm
SCRIPT

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "private_network", ip: "192.168.33.27"
    config.vm.provision "shell", inline: $script
end
