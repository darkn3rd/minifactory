Apache Maven
=========

Installs [Apache Maven](https://maven.apache.org/) using curl and unarchive.

Requirements
------------

- Java 8.x installed.
- Internet Access to download and install [Apache Maven](https://maven.apache.org/)

Role Variables
--------------
- package_version - version of the package
- package_path    - location where to download the package

Dependencies
------------

- `oracle-java`

Example Playbook
----------------

```yaml
- hosts: client.dev
  gather_facts: yes
  become: true
  roles:
    - { role: maven, package_version: "{{ maven_version }}", package_path: "/tmp", become: true }
```



License
-------

MIT

Author Information
------------------

Joaquin Menchaca
