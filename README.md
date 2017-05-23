# nox

git clone https://github.com/lodgnewt/docker-noxbit.git

docker build -t lodgnewt/docker-noxbit .

docker run -d -e PGID=1000 -e PUID=1000 -p 6689:6689 -v /home/noname/noxbit/config/:/config -v /tmp/vcache/:/tmp/vcache lodgnewt/docker-noxbit
