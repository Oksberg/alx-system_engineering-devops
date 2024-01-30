#!/usr/bin/env ruby
#This regex matches a repetition of t between hb and n.

puts ARGV[0].scan(/hbt+n/).join
