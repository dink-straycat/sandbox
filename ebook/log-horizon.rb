# encoding: utf-8
require "rubygems"
require "open-uri"
require "nokogiri"


puts "ログ・ホライズン"
puts "橙乃ままれ"
puts "\n"

(1..73).each do |i|
  puts %Q!\nThread #{sprintf("%03d",i)}\n\n!
  
  warn "http://ncode.syosetu.com/n8725k/#{i}/"
  doc = Nokogiri::HTML(open("http://ncode.syosetu.com/n8725k/#{i}/").read)

  doc.xpath("//div[@id='novel_honbun']").inner_text.each_line do |line|
    line = line.gsub( / /, '' ).gsub( /%/, '％' )  unless line.length == 0
    puts line
  end
  sleep 10
end
