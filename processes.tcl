#!/usr/bin/env tclsh

set dirs [glob -dir /proc * -type d *]
foreach dir $dirs {
    if {[file exists $dir/cmdline]} {
        set psinfo [open $dir/cmdline r]
        while {1} {
            if {[chan gets $psinfo line] > 0} {
                puts "$dir ---> $line"
            } else {
                if {[chan eof $psinfo]} {
                    break;
                } else {
                    puts "Something is wrong."
                    break;
                }
            }
        }

        chan close $psinfo
    }
}
