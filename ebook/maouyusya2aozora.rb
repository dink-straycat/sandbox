#!/usr/bin/ruby
# -*- coding: utf-8; -*-
#
require 'open-uri'
require 'nokogiri'

puts "魔王「この我のものとなれ、勇者よ」勇者「断る！」"
puts "橙乃ままれ"
puts "\n\n"

(1..13).each do |i|
   puts "［＃改ページ］\n\nThread #{i}\n\n"
   $stderr.puts "Thread #{i}"
   h = Nokogiri( open( "http://maouyusya2828.web.fc2.com/matome#{'%02d' % i}.html", 'r:utf-8', &:read ) )
   prev = ''
   (h/"div.mainRes p").each do |elem|
      elem.inner_text.each_line do |l|
         l.chomp!
         l.chomp!
         if /^　/ =~ l then
            prev << l.sub( /^./, '' )
         else
            puts prev.gsub( / /, '' ).gsub( /%/, '％' )  unless prev.length == 0
            prev = l
         end
      end
   end
   puts prev
   sleep 10 # interval against server timeout.
end
