#!/usr/bin/env ruby
#This regex matches a zero or more t between hb and n.

puts ARGV[0].scan(/hbt*n/).join
