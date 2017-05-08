# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://1000mostcommonwords.com/1000-most-common-german-words/'))
doc.xpath('//table//tbody//tr[position() > 1]').each do |link|
  puts Card.create(original_text: link.xpath("td[2]").text, translated_text: link.xpath("td[3]").text)
end
