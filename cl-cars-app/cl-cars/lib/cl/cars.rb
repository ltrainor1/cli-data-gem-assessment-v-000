require "cl/cars/version"
require 'nokogiri'
require 'pry'
require 'open-uri'

class Cars
  def call
    test = CLI.new
    test.call
  end

  def self.search(input)
    if input.to_i > 1999
      puts "These are the cars available from the year #{input}."
      puts cl_search(input)
    else
      puts "No cars available from that year."
    end
end

  def self.cl_search(input)
    doc = Nokogiri::HTML(open('https://raleigh.craigslist.org/search/cta'))
    list = doc.css('.result-title hdrlnk')


end
end
