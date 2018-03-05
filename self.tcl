#!/usr/bin/env tclsh

set status [open "/proc/self/status" r]
while {1} {
    if {[chan gets $status line] > 0} {
        puts $line
    } else {
        if {[chan eof $status]} {
            break;
        } else {
            puts "Something is wrong."
            break;
        }
    }
}

chan close $status
