require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
# p doc.css(".heading-primary").text.strip
courses = doc.css(".heading-20-semibold")
courses.each do |course|
    puts course.text.strip
end