docker
======

Use this role to install Docker CE on Ubuntu.
Optionally set a specific version number.

Requirements
------------

- This role was tested only on Ubuntu operating systems.
  - Ubuntu 22.04 
- Amd64 or Arm64 architectures are required.
- APT package manager is required

Role variables
--------------

```yaml
docker_sudo_users: []
```
List of usernames to allow Docker access to non-root users in a way that
allows you to log all docker commands executed on the host.
The logs can be found (on Ubuntu) in `/var/log/auth.log`.

```yaml
docker_version: "*.*.*"
```

Docker CE version. Each asterisk is a can be replaced by a version number
component. The first is the major version, the second is the minor version
and the last is the patch version. If any version is left as asterisk,
that means "the latest version". Examples:

- `26.1.3`: Docker CE 26.1..3
- `26.1.*`: The latest patch version of Docker CE 26.1.
- `26.*.*`: The latest minor and patch version of Docker CE 26.
- `*.*.*`: The latest available version

Dependencies
------------

There are no dependencies. This role can be used without depending on other roles.

Example playbook
----------------

```yaml
- hosts: all
  roles:
    - role: docker
      docker_sudo_users:
        - manager
        - john
      docker_version: "26.1.*"
```

License
-------

MIT License
