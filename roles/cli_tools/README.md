cli_tools
=========

Useful command line tools for scripting, formatting and interactive use.

The following packages will be installed:

- Common network tools
  - **bridge-utils**: It contains the brctl command which can manage bridge interfaces. The brctl command can be replaced with the "ip" command, but it is useful to have it in case you copy-paste some commands from tutorials where brctl is used.
  - **net-tools**: It contains "netstat" which can also be replaced with another command called "ss" which is part of the "iproute2" package on Ubuntu.
  - **iproute2**: Usually installed by default on recent Ubuntu distros. It gives you the "ip" command to manage IP addresses and network interfaces. It also contains the "ss" command which can be used instead of "netstat".

    You can find replacement commands on Wikipedia: <https://en.wikipedia.org/wiki/Iproute2>

- Python 3 support:
  Python 3 is recommended usually instead of Python 2. This role also installs common tools which we use in a Python environment:

  - **python3**: The main package for Python 3.
  - **python3-pip**: Pip package manager for Python 3
  - **python3-venv**: The venv module to create a virtual environment (Ex.: `python3 -m venv venv`)
  - **python3-virtualenv**: The virtualenv module to create a virtual environment (Ex.: `python -m virtualenv venv`)

- Formatting tools for scripting and user-friendly outputs
  - **jq**: To handle JSON files and JSON outputs in a script or format and highlight it. Link <https://jqlang.github.io/jq/>
  - **python3-pygments**: It will install the "pygmentize" command to highlight contents of files like source codes in the terminal. It isn't required for JSON because of jq, but it could be useful for other kind of outputs.
  - **highlight**: Instead of remembering the name "pygmentize" you would probably prefer "highlight", so this will also be installed as a symbolic link to "pygmentize".
  - **yq**: yq is similar to jq, except it is for YAML files. Link: <https://github.com/mikefarah/yq>

- Install packages for downloading files and webpages
  - curl
  - wget

- Terminal emulator
  - **tmux**: Tmux is a good way to have an emulated terminal which would keep running even when your SSH connection terminates. This way you can make sure your work on the server will not be terminated due to unstable network. Tmux does much more. See <https://github.com/tmux/tmux/wiki>

- Packages to compress files
  - zip
  - unzip
  - tar
  - gzip

- Monitoring tools in command line
  - **htop**: This is an improved alternative to the top command. More information: <https://htop.dev/>
  - **btop**: btop is even more advanced than htop. It is almost like a GUI in terminal. Link: <https://github.com/aristocratos/btop>
  - **glances**: It has a web-based interface too, but you can use it from terminal. "Glances" shows information about Docker containers too by default. Link <https://glances.readthedocs.io/en/latest/>

- User manual related packages
  - **man**: It is usually installed by default, but some installers may not install it automatically or missing from a virtual machine image.

- Text editors
  - **nano**: A simple text editor in terminal with limited capabilities but easier to use.
  - **vim**: An advanced text editor in terminal, but some people may find it more than they need and harder to use.

Requirements
------------

- This role was tested only on Ubuntu operating systems.
  - Ubuntu 20.04
  - Ubuntu 22.04 
- Amd64 or Arm64 architectures are required.
- APT package manager is required

Role variables
--------------

```yaml
cli_tools_yq_version:
```

Set a specific version number like "4.40.3" if you don't want to install the latest or if the automatic version detection doesn't work.

The available versions can be found on GitHub: <https://github.com/mikefarah/yq/releases>

```yaml
cli_tools_yq_dest: /usr/local/bin/yq
```

The path of the "yq" executable. This is where it will be saved after downloading it from GitHub.

```yaml
cli_Tools_highlight_dest: /usr/local/bin/highlight
```

The path of the symbolic link which will point to `/usr/bin/pygmentize`.

Dependencies
------------

There are no dependencies. This role can be used without depending on other roles.

Example playbook
----------------

```yaml
- hosts: all
  roles:
    - role: cli_tools
      cli_tools_yq_version: 4.40.4
```

License
-------

MIT License
