# Mini-Factory

by Joaquín Menchaca (2017年1月7日)

This is a basic [Artifactory OSS](https://www.jfrog.com/open-source/) installation on [Virtualbox](https://www.virtualbox.org/wiki/Downloads) guest system using [Vagrant](https://www.vagrantup.com/).  

## **Instructions**

Assuming [Vagrant](https://www.vagrantup.com/),  [Virtualbox](https://www.virtualbox.org/wiki/Downloads), and [Ansible](http://docs.ansible.com/ansible/intro_installation.html) are installed<sup>†</sup>, do the following:

```bash
# bring up virtual guests (1.5gb)
vagrant up
# provision system, install artifactory
./provision/site.yml
```

† Run `./install.sh` on Mac OS X for installing aforementioned components using [Homebrew](http://brew.sh/), [Cask](https://caskroom.github.io/), and [Brew Bundle](https://github.com/Homebrew/homebrew-bundle).
