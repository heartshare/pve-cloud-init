#!/bin/sh

# Create Cloud-init enabled templates on Proxmox.
# Supporting Debian, Ubuntu, Fedora, and Arch Linux

# TODO: 
#   - dry this up with some vars and a for loop.
#   - separate out downloading images from vm creation.
#   - why not ansible?


# Download Ubuntu 20.04
#######################
# Download the image
wget https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-disk-kvm.img

# Create a new virtual machine
qm create 8000 --memory 2048 --core 2 --name ubuntu-focal --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8000 focal-server-cloudimg-amd64-disk-kvm.img local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8000 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8000-disk-0

# Add cloud init drive
qm set 8000 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8000 --boot c --bootdisk scsi0

# Add serial console
qm set 8000 --serial0 socket --vga serial0




# Download Fedora 35
####################
# Download the image
wget https://download.fedoraproject.org/pub/fedora/linux/releases/35/Cloud/x86_64/images/Fedora-Cloud-Base-35-1.2.x86_64.qcow2

# Create a new virtual machine
qm create 8001 --memory 2048 --core 2 --name fedora-35 --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8001 Fedora-Cloud-Base-35-1.2.x86_64.qcow2 local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8001 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8001-disk-0

# Add cloud init drive
qm set 8001 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8001 --boot c --bootdisk scsi0

# Add serial console
qm set 8001 --serial0 socket --vga serial0




# Download "Arch Linux"
#######################
# Download the image
wget https://gitlab.archlinux.org/archlinux/arch-boxes/-/jobs/50697/artifacts/raw/output/Arch-Linux-x86_64-cloudimg-20220319.50697.qcow2

# Create a new virtual machine
qm create 8002 --memory 2048 --core 2 --name arch-linux --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8002 Arch-Linux-x86_64-cloudimg-20220319.50697.qcow2 local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8002 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8002-disk-0

# Add cloud init drive
qm set 8002 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8002 --boot c --bootdisk scsi0




# Download Debian 11 Bullseye
#############################
# Download the image
wget https://cloud.debian.org/images/cloud/bullseye/latest/debian-11-genericcloud-amd64.qcow2

# Create a new virtual machine
qm create 8003 --memory 2048 --core 2 --name debian-bullseye --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8003 debian-11-genericcloud-amd64.qcow2 local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8003 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8003-disk-0

# Add cloud init drive
qm set 8003 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8003 --boot c --bootdisk scsi0

# Add serial console
qm set 8003 --serial0 socket --vga serial0




# Download Ubuntu 22.04 "jammy"
###############################
# Download the image
wget https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-disk-kvm.img

# Create a new virtual machine
qm create 8004 --memory 2048 --core 2 --name ubuntu-jammy --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8004 jammy-server-cloudimg-amd64-disk-kvm.img local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8004 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8004-disk-0

# Add cloud init drive
qm set 8004 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8004 --boot c --bootdisk scsi0

# Add serial console
qm set 8004 --serial0 socket --vga serial0




# Download Fedora 36
####################
# Download the image
wget https://download.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.qcow2

# Create a new virtual machine
qm create 8005 --memory 2048 --core 2 --name fedora-36 --net0 virtio,bridge=vmbr0

# Import the downloaded Ubuntut disk to local-lvm storage
qm importdisk 8005 Fedora-Cloud-Base-36-1.5.x86_64.qcow2 local-lvm

# Attach the new disk to the vm as a scsi drive on the scsi controller
qm set 8005 --scsihw virtio-scsi-pci --scsi0 local-lvm:vm-8005-disk-0

# Add cloud init drive
qm set 8005 --ide2 local-lvm:cloudinit

# Make the clud init drive bootable and restrict BIOS to boot from disk only
qm set 8005 --boot c --bootdisk scsi0

# Add serial console
qm set 8005 --serial0 socket --vga serial0
