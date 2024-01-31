#!/usr/bin/env ruby
#This regex matches the phone numbers or names of
#a sender and a receiver of a text in addition to
#the flags that were used.

puts ARGV[0].scan(/[(\+?\d{9,11})|(^A-Z(a-z)+)],[(\+?\d{9,11})|(^A-Z(a-z)+]),[^a-zA-Z]/).join
