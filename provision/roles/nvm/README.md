**nvm**
=========

This is installs Node using NVM installer.

Requirements
------------

Target system is tested with *Ubuntu Trusty Tahr 14.04*.

Role Variables
--------------

none

Dependencies
------------

none

Example Playbook
----------------

    - hosts: all
      gather_facts: yes
      become: false
      roles:
        - nvm

License
-------

MIT

Author Information
------------------

Joaquín Menchaca
