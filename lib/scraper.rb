require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

courses = doc.css(".tout__label.heading.heading--level-4")
