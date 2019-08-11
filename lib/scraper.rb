require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
puts doc.css(".headline-26OIBN").text.strip


# <h1 class="headline-26OIBN">Change things.</h1>
# puts doc
