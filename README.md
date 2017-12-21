### Test pmilter

- CentOS
- postfix

### Build

```sh
$ docker build -t pmilter .
```

### Run container

```sh
$ docker run --name pmilter --hostname pmilter.local -p 10025:25 --privileged -dti pmilter /sbin/init
```
