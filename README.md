Starts an ubuntu container with nginx and webserv
to compare the output of the webserv with the nginx server
and to avoid different code for macOS and linux in development
   - nginx
   - devtools 

run it from ../webserv to include the webserv folder

```bash
docker build -t webserv .
```
map the filesystem to have the webserv folder parent , ie 42/webserv -> ~/42:/home/root
```bash
docker run -it -v ~/42:/home/root ubuntu
```

press enter and you get a shell in the container

