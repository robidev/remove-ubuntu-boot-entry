# remove-ubuntu-boot-entry
This script is added to crontab, to remove the first ubuntu entry in the efi boot menu on reboot. This is used in a bootable USB stick to prevent the TPM from detecting a modification that will trigger the request for a bitlocker key on a windows machine due to a modification of the UEFI
