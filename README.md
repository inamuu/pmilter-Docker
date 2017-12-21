### Test pmilter

OS: CentOS
MTA: postfix

### Build

```sh
$ docker build -t pmilter .
```

### Run container

```sh
$ docker run --name pmilter -p 10025:25 --privileged -dti pmilter /sbin/init
```
