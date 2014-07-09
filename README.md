###Rust Vagrant Virtual Environment
Built on top of an Arch-Linux-64 bit basebox, this is a Vagrantfile for Rust development.

###Setup
1. First, install [Oracle VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/)
2. Clone this repository
3. Run `vagrant up` from the command line
4. Any code written in the `/src` directory on your local machine will be synced to the folder `/rust/src` in the virtual environment
	- To customize this, change the `config.vm.synced_folder` variable in the Vagrantfile

###What needs to be done
Need to add automation to append thestinger's nightly Rust builds to pacman.conf. Currently, this is being done with an unstable shell script (test.sh in the /src folder)
Next, a `pacman -S community/rust` needs to be issued, followed by a `pacman -Syu` to update all packages.