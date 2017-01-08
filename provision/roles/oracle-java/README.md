Oracle-Java
=========

This installs Oracle Java 8.

Requirements
------------

The guest target system must be a Debian based system.  This has only been tested on Ubuntu Trusty Tahr.

Role Variables
--------------

None

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- hosts: all
  become: true
  roles:
     - oracle-java
```

License
-------

MIT

Author Information
------------------

Joaquin Menchaca
