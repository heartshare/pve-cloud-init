# proxmox-cloud-init


[cloud-init][0] is a standard to customize Linux images during first boot.

This script aims to download and create Proxmox templates of cloud-init enabled images
for Arch Linux, Debian, Fedora, and Ubuntu.

## Usage

1. Run the script `cloud-init.sh` on the Proxmox host to download and configure
   the desired VMs. Do not power on the VMs.

1. In the Proxmox web interface, select each VM and configure the appropriate
   hardware and cloud-init settings. Make sure to specify DHCP in the
   cloud-init IP configuration section.

1. Convert each VM to a template.

1. Ensure each template has the QEMU guest agent enabled in 'Options'.

## Proxmox Steps

1. Run cloud-init.sh to download images and create the associated vms.
1. foreach vm, configure the hardware and cloud-init settings. do not power on.
1. convert each vm to a template.
1. clone future vms from the templates.







[0]: https://cloudinit.readthedocs.io/en/latest/
[1]: https://techno-tim.github.io/posts/cloud-init-cloud-image/
[2]: https://youtu.be/1nf3WOEFq1Y?t=295
