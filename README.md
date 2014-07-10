###Rust Vagrant Virtual Environment
Built on top of an Arch-Linux-64 bit basebox, this is a Vagrantfile for Rust development.

###Setup
1. First, install [Oracle VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/)
2. Clone this repository
3. Run `vagrant up` from the command line
4. Any code written in the `/src` directory on your local machine will be synced to the folder `/rust/src` in the virtual environment
	- To customize this, change the `config.vm.synced_folder` variable in the Vagrantfile
5. Also, be sure to set RAM usage that fits your machine. I set it to 4 gigs, which may be too much or too little for your system.
6. When `vagrant up` finishes, run `vagrant ssh` to ssh into the box. Navigate to `/rust/src/` or whatever you set your synced folder to.
7. `rustc` compiles your Rust code into executables

###Notes
- The first time the box is provisioned may take some time because Arch-Linux is updated and Rust is installed.
- **Warning**: `pacman -Syu` is issued with the `--noconfirm` flag. This is not best practice, so if you would prefer to be safe, check out the provisioning Gist script, then comment out the two install lines. You can then issue these commands manually.

###Basebox Information
Located [here](https://github.com/terrywang/vagrantboxes/blob/master/archlinux-x86_64.md).

###Useful Rust resources
- [30 minute introduction to Rust](http://doc.rust-lang.org/master/intro.html) 
- [Full Rust documentation](http://doc.rust-lang.org/0.11.0/std/)
