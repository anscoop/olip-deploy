# OLIP deploy

This set of roles and tasks use belena-engine (Moby-based container engine) and pull Docker images to OLIP platform


## Initialization

```
curl -sfL https://github.com/bibliosansfrontieres/olip-deploy/raw/master/go.sh | bash -s -- --name my_platform_name --url http://my-platform-name.fr --descriptor /ipfs/QmaqMmAiFMp2Ff9P7isuSxRjZE9ZS1YZh5NWX55AWbjDuA
```

### Update API with latest file descriptor version

```
http://my-platform-name.fr:5002/applications/?repository_update=true
```

### Use the dashboard

```
http://my-platform-name.fr
```

### Checkout the API

```
http://my-platform-name.fr:5002
```
