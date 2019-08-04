require 'nokogiri'
require 'open-uri'

class Scraper 
html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(open(html))

# puts doc.css(".site-header__hero__headline").text.strip

courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
   puts course.text.strip
end

p doc.css(".tout__label.heading.heading--level-4")[0]
p doc.css(".tout__label.heading.heading--level-4")[0].name
p doc.css(".tout__label.heading.heading--level-4")[0].attributes

end



