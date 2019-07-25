require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc.css(".site-header__hero__headline").text
