**pip**
=========

This is installs Python package managers `setuptools` and `pip`.

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
      become: true
      roles:
        - pip

License
-------

MIT

Author Information
------------------

Joaquín Menchaca
