Artifactory
=========

Downloads and Installs [Artifactory OSS](https://www.jfrog.com/open-source/) using their installer script.

Requirements
------------

- Java 8.x installed.
- Internet Access to download and install Artifactory

Role Variables
--------------

- `package_version` is set to desired target version
- `package_path` set to `/vagrant/packages` for local spot to save packages.  This should be overidden for non-vagrant systems.

Dependencies
------------

- `oracle-java`

Example Playbook
----------------

```yaml
- hosts: artifactory
  vars:
    version: 4.15.0
  become: true
  roles:
    - { role: artifactory, package_version: "{{ version }}" }
```



License
-------

MIT

Author Information
------------------

Joaquin Menchaca
