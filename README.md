# CS488 Vagrant Box

This is vagrant + puppet configuration to compile and run the code for CS488 so 
you don't have to deal with the latency of working on the CS servers.

You'll need to have [Virtualbox][0] and [Vagrant][1] installed to get this to 
work.

Once you have those installed, clone this repository (or download it if you 
don't have git for some crazy reason).

    git clone git://github.com/phleet/uw-cs488-vm.git

`cd` into the repository directory, and edit the `Vagrantfile`, changing the 
synced folder settings to suit your fancy. These are the lines starting with 
`config.vm.synced_folder`. There's more information about synched folders in the 
[Vagrant Documentation][2].

You'll want to make sure you have the source copied from the CS servers 
available in a synced folder. For instance, you might want to do something like 
the following:

    cd ~
    scp -r yourusername@linux032.student.cs.uwaterloo.ca:~/cs488 uwcs_cs488

Then add this line to your `Vagrantfile`

    config.vm.synced_folder "~/uwcs_488", "/home/vagrant/cs488"

After changing these settings, boot the VM:

    vagrant up

This will take a while, since it'll be downloading a base Ubuntu image for the 
VM, booting the machine, and installing packages. This should be a one time 
cost, but might take between 5 minutes or so _after_ the download is finished.

Once booted, you can SSH into the box. You'll want to enable X forwarding, so 
you'll want to run a command like this:

    vagrant ssh -- -Y

[0]: https://www.virtualbox.org/wiki/Downloads
[1]: http://docs.vagrantup.com/v2/installation/index.html
[2]: http://docs.vagrantup.com/v2/synced-folders/basic_usage.html
