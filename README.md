Starts an ubuntu container with nginx and webserv
to compare the output of the webserv with the nginx server
and to avoid different code for macOS and linux in development
   - nginx
   - devtools 

```bash
docker build -t webserv .
```
map the filesystem to have the webserv folder parent , ie 42/webserv -> ~/42:/home/root
```bash
docker run -p 80:80 -p 4222:4222 -it -v ~/42:/home/root ubuntu
```
press enter and you get a shell in the container

