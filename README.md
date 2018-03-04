# meminfo
A Tcl script to read Linux /proc/meminfo file.

It is a Tcl script to check memory usage (to read the /proc/meminfo file).

The values of MemTotal, MemFree, Buffers, Cached, SwapTotal, SwapFree
indicate same values of memory usage as the free command.

So we can use `free -k` to check the value.
