# Macbook

Set the `noop` scheduler for the SSD

```
[nwatkins@martini ~]$ cat /sys/block/sda/queue/scheduler
noop deadline [cfq] 
[nwatkins@martini ~]$ echo noop | sudo tee /sys/block/sda/queue/scheduler
noop
```

Install `powertop` and enable tunables. Configuration can be expored and loaded on bootup. http://askubuntu.com/questions/112705/how-do-i-make-powertop-changes-permanent
