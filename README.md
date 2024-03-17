# Starts an ubuntu container with 
   - nginx
   - devtools 
run it from ../webserv to include the webserv folder

```bash docker build -t webserv . ```

```bash docker run -it -v $(pwd):/home/root ubuntu ```


nginx will start on port 80
webserv in the specified port from config
press enter and you get a shell in the container

get the ip of the container 
ip a
open a browser and enter the ip:port
i.e -> http://172.17.0.2:80
