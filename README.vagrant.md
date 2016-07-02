# setting up vagrant environment

a) long version: follow https://gorails.com/guides/using-vagrant-for-rails-development

b) short version:
* install VirtualBox (>= 5.0.14) and vagrant (>= 1.8.1)
* vagrant plugin install vagrant-vbguest # (>= 0.11.0)
* vagrant plugin install vagrant-librarian-chef # (>= 0.2.1)
* vagrant plugin install vagrant-omnibus # (>= 1.4.1)

* vagrant box outdated # check if latests box is already present
* vagrant box update # perform update of boxes

* vagrant up # to start VM
* vagrant ssh # to log in to the VM

* vagrant provision # to re-run configuration with chef

* vagrant destroy # kill the VM

* vagrant halt # shut down the VM

/vagrant is your current git checkout inside the VM. Port 3000 is forwarded to your host.

# notes:
* make sure your app contains the empty folder `cookbooks`
* in case `vagrant plugin install vagrant-librarian-chef` fails, try `vagrant plugin install vagrant-librarian-chef-nochef`
* requires git installation and git being available in command prompt / console
* https://stackoverflow.com/questions/34848146/vagrant-error-the-box-hashicorp-precise32-could-not-be-found-windows-10-d/34848147#34848147 in case box can not be found by vagrant in windows 10 and the error.
