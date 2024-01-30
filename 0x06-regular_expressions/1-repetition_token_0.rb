#!/usr/bin/env ruby
#This regex matches a repetition of t between ht and n.

puts ARGV[0].scan(/hbt{2,5)n/).join
