Artifactory Pro
=========

Installs [Artifactory Pro](https://www.jfrog.com/confluence/display/RTF/Installing+on+Linux+Solaris+or+Mac+OS) using Debian package.

Requirements
------------

- Java 8.x installed.
- Internet Access to download and install Artifactory

Role Variables
--------------
No variables, this just grabs the latest and greatest.

Dependencies
------------

- `oracle-java`

Example Playbook
----------------

```yaml
- hosts: artifactory.dev
  gather_facts: yes
  become: true
  roles:
    - { role: artifactory_pro }
```



License
-------

MIT

Author Information
------------------

Joaquin Menchaca
