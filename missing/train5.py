#!/usr/bin/env python
import signal, time

def handler(signum, time):
    print("\nI got a SIGINT, but I am not stopping")

signal.signal(signal.SIGINT, handler)
i = 0
while True:
    time.sleep(.1)     #在执行这个程序的时候，按ctrl+c不会停止，按ctrl+、才会停止，一个是SIGINT另一个是SIGQUIT
    print("\r{}".format(i), end="")
    i += 1

