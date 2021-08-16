## Elastalert2 container image for Docker

Steps to deploy

- Create a config file. You can copy the config example from https://github.com/sandeeprenjith/elastalert-docker and work from there. 
- Create a directory for rules. In the example, we use the directory 'rules' from current working directory. 
- Below is the command to deploy the container. 

```
docker run -d --name elastalert --restart always -v `pwd`/config.yaml:/opt/elastalert/config.yaml:z -v `pwd`/rules:/opt/elastalert/rules:z rensande/elastalert
```
