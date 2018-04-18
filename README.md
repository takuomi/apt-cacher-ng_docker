# Apt-Cacher NG

## Build
```
docker build --compress --no-cache -t takuomi/apt-cacher-ng .
```

## Run
```
docker volume create apt-cacher-ng_cache
docker run -d -p 3142:3142 --rm -v apt-cacher-ng_cache:/var/cache/apt-cacher-ng takuomi/apt-cacher-ng
```
