#!/usr/bin/env ruby
print ARGV[0].scan(/from.*?(?=\])/).join.partition(':').last
print ','
print ARGV[0].scan(/to.*?(?=\])/).join.partition(':').last
print ','
puts ARGV[0].scan(/flags.*?(?=\])/).join.partition(':').last
