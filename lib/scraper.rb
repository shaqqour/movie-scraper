require 'nokogiri'
require 'open-uri'

class Scraper
    url = "https://editorial.rottentomatoes.com/guide/essential-movies-to-watch-now/"
    html = open(url)
    doc = Nokogiri::HTML(html)
    movies = doc.css("div .row.countdown-item")

    movies_names = []
    movies.each_with_index do |movie, idx|
        movies_names << movie.css("div h2 a").text.strip
    end
end