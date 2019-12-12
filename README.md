# Nuclio Native Binary

This repository shows how to run pre-compiled binaries on Nuclio via their supported [shell runtime](https://nuclio.io/docs/latest/reference/runtimes/shell/writing-a-shell-function/#handle-events-with-any-executable-binary).

## Prerequisites
1. Install Docker
2. [Download the latest release of the `nuctl` client](https://github.com/nuclio/nuclio/releases)
3. Extract the `nuctl-1.3.3-linux-amd64` binary and rename it to just `nuctl`
4. Copy `nuctl` to `/usr/local/bin/` and confirm that it is in your path by executing `nuctl --help`
5. [Download and install wrk](https://github.com/wg/wrk/releases), using the same logic as in steps 2-4.
6. Optinally install httpie via `sudo apt-get install httpie`. You can alternatively use `curl` if you prefer that.

## Hello World Example

We have a simple C program that takes a name and print Hello followed by that name. Let's run this on nuclio.

1. First, compile the C program

```sh
gcc hello.c -o hello
```
2. Now we can build our Docker container and deploy this to nuclio
```
./deploy.sh hello "Random"
```

You should see a success message as follows: 
```
19.12.12 14:09:56.656                     nuctl (I) Function deploy complete {"httpPort": 43863}
```

### Running with default runtime arguments

You can then use HTTP to interact with the nuclio processor and run your function. This example  uses `httpie`.

```
http 127.0.0.1:43863 
```

```
Content-Length: 17
Content-Type: text/plain; charset=utf-8
Date: Thu, 12 Dec 2019 19:15:39 GMT
Server: nuclio

Hello Random
```

### Running with custom runtime arguments

We can overwrite the default argument as follows: 

```
http 127.0.0.1:43863 x-nuclio-arguments:'Phani'
```

```
Content-Length: 17
Content-Type: text/plain; charset=utf-8
Date: Thu, 12 Dec 2019 19:15:39 GMT
Server: nuclio

Hello Phani
```
### Benchmarking with default runtime arguments

We can then benchmark the performance of this function. To do this, we will use `wrk`.

```
wrk -c 36 -t 36 -d 10 http://172.17.0.1:43863
```

```
Running 10s test @ http://172.17.0.1:43863
  36 threads and 36 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.11ms    3.09ms  82.45ms   94.64%
    Req/Sec     2.76k     1.05k    7.47k    66.28%
  992989 requests in 10.08s, 102.34MB read
  Non-2xx or 3xx responses: 991361
Requests/sec:  98505.02
Transfer/sec:     10.15MB
```

### Benchmarking with custom runtime arguments

We can set the x-nuclio-arguments header using a LuaScript

```bash
wrk -c 36 -t 36 -d 10 -s script.lua http://172.17.0.1:43863
```