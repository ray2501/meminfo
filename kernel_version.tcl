#!/usr/bin/env tclsh

set version [open "/proc/version" r]
while {1} {
    if {[chan gets $version line] > 0} {
        puts $line
    } else {
        if {[chan eof $version]} {
            break;
        } else {
            puts "Something is wrong."
            break;
        }
    }
}

chan close $version
