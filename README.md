# landscape-sysinfo

`landscape-sysinfo` provides an overview of various system metrics. It was developed as a Message of The Day (MoTD) script.

It has been tested on Debian 12.

It is powered by `bash` and a tiny bit of `awk` for floating-point arithmetic.

## Example output

```shell
Linux cloud 6.1.0-9-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.1.27-1 (2023-05-08) x86_64

  System information as of Wed May 31 13:20:28 CST 2023

  System load:               0.0
  Usage of /:                30% of 9.9G
  Memory usage:              25.6% of 480M
  Swap usage:                0%
  Processes:                 79
  Users logged in:           2
  IPv4 address for ens3:     167.88.182.104
  IPv4 address for docker0:  172.17.0.1

The uptime of this server is 14h 44m.

Last login: Wed May 31 13:07:01 2023 from 42.225.42.153
```
