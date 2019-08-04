require 'nokogiri'
require 'open-uri'

class Scraper
  doc = Nokogiri::HTML(open("https://flatironschool.com/"))
  
  doc.css(".site-header__hero__headline").text.strip
  
  courses = doc.css(".tout__label.heading.heading--level-4")
  
  courses.each {|course| puts course.text.strip}
  
  p doc.css(".tout__label.heading.heading--level-4")[0]
end
