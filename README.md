# README

This project was created to help you build your own home lab where you can test
your applications and configurations without breaking your workstation so you can
learn on cheap devices without paying for more expensive cloud services.

The project contains code written for the tutorial, but you can also use parts of it
if you refer to this repository.

Tutorial on Youtube in English: <https://www.youtube.com/watch?v=K9grKS335Mo&list=PLzMwEMzC_9o7VN1qlfh-avKsgmiU8Jofv>

Note: The inventory.yml file is not shared since that depends on the actual environment
so it will be different for everyone. If you want to learn more about the inventory file,
watch the videos on YouTube or read the written version on <https://dev.to>. Links in
the video descriptions on YouTube.

You can also find an example inventory file in the project root. You can copy that and change
the content so you will use your IP addresses and usernames.

```bash
cp inventory-example.yml inventory.yml
```

Optionally, if you want to start an SSH agent, run:

```bash
ssh-agent $SHELL
```

If you generated an SSH private key at `~/.ssh/ansible` the it will be added automatically
when you souce the homelab env scripts. Otherwise you need to run:

```bash
ssh-add $PATH_OF_THE_SSH_PRIVATE_KEY
```

Use the actual path of the SSH private key instead of the variable.

If you created a python virtual environment with the name "venv", you can activate it using

```bash
source homelab-env.sh
```

Override the `HOMELAB_ENV` variable to customize the environment:

```bash
HOMELAB_ENV=custom-env source homelab-env.sh
```

If you want `venv-linux` on linux and `venv-darwin` on macOS, you can run

```bash
source homelab-env-os.sh
```
