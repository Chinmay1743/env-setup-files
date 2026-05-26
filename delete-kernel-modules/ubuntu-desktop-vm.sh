# Delete unused kernel modules to save disk space, decrease boot time, make system secure
# by reducing attack surface.
# This file is supposed to run in a virtual machine.
# 
# Do not run this in a host installation. Host configuration should be checked first then
# a separate file can be derived from this VM script to cleanup that environment.
#
# This file will receive update from time to time based on new modules that I find useless.

# Run following command to check built-in modules compiled with kernel. Assume that you 
# will need to recompile the kernel if you wish to remove it:
# cat /lib/modules/$(uname -r)/modules.builtin

# Run following command to check to list all installed modules in your system. The output
# may be too big to scroll on terminal so save it in a file:
# ls -R /lib/modules/$(uname -r)/kernel/ > list-kernel-module-output.txt

# Run the command to check which modules are currently loaded: lsmod

echo "Cleanup Script for Ubuntu VM"



echo "Task completed"

