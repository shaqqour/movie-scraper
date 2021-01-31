require 'nokogiri'
require 'open-uri'

class Scraper
    url = "https://editorial.rottentomatoes.com/guide/essential-movies-to-watch-now/"
    html = open(url)
    doc = Nokogiri::HTML(html)
    content = doc.css("div .row.countdown-item")
end