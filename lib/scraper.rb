require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")


courses = doc.css(".tout__label.heading.heading--level-4")
 
courses.each do |course|
  puts course.text.strip
end
