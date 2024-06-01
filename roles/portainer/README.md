portainer
=========

Deploy portainer on a remote server using Docker.

Requirements
------------

- Python 3
- Python 3 pip

Role variables
--------------

```yaml
portainer_name: portainer
```

The name of the container

```yaml
portainer_image: portainer/portainer-ce:2.20.2-alpine
```

The image tag used to create the container.

```yaml
portainer_external_port: 9443
```

The port number on which we want to access portainer from outside the container.

```yaml
portainer_volume_name: "{{ portainer_name }}_data"
```

The name of the volume on which Portainer stores its configuration.