# meminfo
A Tcl script to read Linux /proc/meminfo file.

It is a Tcl script to check memory usage (to read the /proc/meminfo file).

The values of MemTotal, MemFree, Buffers, Cached, SwapTotal, SwapFree
indicate same values of memory usage as the free command.

So we can use `free -k` to check the value.

The proc filesystem ([procfs](https://en.wikipedia.org/wiki/procfs)) is a special filesystem
in Unix-like operating systems that presents information about processes and other system 
information in a hierarchical file-like structure, providing a more convenient and standardized 
method for dynamically accessing process data held in the kernel than traditional tracing 
methods or direct access to kernel memory.

And -
 * kernel_version.tcl: read /proc/version to get Linux kernel version info
 * processes.tcl: read /proc/PID/cmdline to list current processes
 * self.tcl: read /proc/self/status to get self memory status

