#!/usr/bin/env tclsh

set meminfo [open /proc/meminfo r]
while {1} {
    if {[chan gets $meminfo line] > 0} {
        puts $line
    } else {
        if {[chan eof $meminfo]} {
            break;
        } else {
            puts "Something is wrong."
            break;
        }
    }
}

chan close $meminfo
