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

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

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
