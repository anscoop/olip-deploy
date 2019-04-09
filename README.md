# OLIP deploy

This set of roles and tasks use belena-engine (Moby-based container engine) and pull Docker images to OLIP platform


## Initialization

### From the server you want to configure

```
curl -sfL https://github.com/bibliosansfrontieres/olip-deploy/raw/master/go.sh | bash -s -- --name my_platform_name --url my-platform-name.fr --descriptor /ipfs/QmaqMmAiFMp2Ff9P7isuSxRjZE9ZS1YZh5NWX55AWbjDuA
```

### With Ansible CLI

```
ansible-playbook -i hosts -l my_server -u root main.yml --extra-vars "end_user_server_name=my_platform_name end_user_domain_name=my-platform-name.fr end_user_olip_file_descriptor=QmaqMmAiFMp2Ff9P7isuSxRjZE9ZS1YZh5NWX55AWbjDuA"
```

## Usage

### Update API with latest file descriptor version

```
http://olip.api.my-platform-name.fr:5002/applications/?repository_update=true
```

### Use the dashboard

```
http://olip.my-platform-name.fr
```

### Checkout the API

```
http://api.olip.my-platform-name.fr:5002
```

## Firewall

Open inbound port :
* `80` for HTTP
* `10000 - 20000` for OLIP WebApp
* `22` for SSH
* `4001` for IPFS swarm
* `5002` for OLIP API
