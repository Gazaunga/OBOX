#!/usr/bin/env ruby

## VARS ##

width = 1920

height = 24

fg = "'#66FFFFFF'"
bg = "'#AA000000'"

font = "Font Awesome"

period = 0.25

clock = Time.now.asctime

trap("SIGINT") { exit 0 } # allow ctrl-c

## MAIN ##

IO.popen("lemonbar -g #{width}x#{height}+0+0 -F #{fg} -B #{bg} -f 
#{font}", "r+") do |pipe|
  loop do
    pipe.puts "%{c}#{clock}"
    sleep period
  end
end
