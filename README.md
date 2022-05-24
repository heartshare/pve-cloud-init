# pve-cloud-init

Downloads cloud-init ready images and configures virtual machines in Proxmox
that will later be converted into vm templates.

This script aims to support downloading cloud-init ready images for the latest
versions of Arch Linux, Debian, Fedora, and Ubuntu.

## What is Cloud-init?

Cloud-init is an industry standard for initializing custom images on first
boot. [From the docs][0]:

> Cloud-init is the industry standard multi-distribution method for
> cross-platform cloud instance initialization. It is supported across all
> major public cloud providers, provisioning systems for private cloud
> infrastructure, and bare-metal installations.


## Usage

1. Run the script `cloud-init.sh` on the Proxmox host to download and configure
   the desired VMs with cloud-init enabled images. Do not power on the VMs.

1. In the Proxmox web interface, select each VM and configure the appropriate
   hardware and cloud-init settings. Make sure to specify DHCP in the
   cloud-init IP configuration section, or have static IP allocation already
   accounted for on your network.

1. Convert each VM to a template using the proxmox web interface.

1. Optionally ensure each template has the QEMU guest agent enabled in 'Options'.

1. Clone and start desired VMs from your templates.


## Resources

- [cloud-init docs][0]
- [techno tim blog post][1]
- [techno tim video][2]
- [Ubuntu Cloud Images][3]
- [Fedora Cloud Images][4]
- [Debian Cloud Images][5]
- [arch-boxes][6]
- [ArchWiki's Cloud image instructions][7]
- [Proxmox Cloud-init Support][8]




[0]: https://cloudinit.readthedocs.io/en/latest/
[1]: https://techno-tim.github.io/posts/cloud-init-cloud-image/
[2]: https://youtu.be/1nf3WOEFq1Y?t=295
[3]: https://cloud-images.ubuntu.com
[4]: https://download.fedoraproject.org/pub/fedora/linux/releases/35/Cloud/
[5]: https://cloud.debian.org/images/cloud
[6]: https://gitlab.archlinux.org/archlinux/arch-boxes/
[7]: https://wiki.archlinux.org/title/Arch_Linux_on_a_VPS#Official_Arch_Linux_cloud_image
[8]: https://pve.proxmox.com/wiki/Cloud-Init_Support
