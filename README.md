# docker-phi-server
RimWorlds popular multiplayer mod server in a container

Container uses mono to start .NET application under Ubuntu

# Start the container
sudo docker run -d -t -p 16180:16180 vlli/docker-phi-server
