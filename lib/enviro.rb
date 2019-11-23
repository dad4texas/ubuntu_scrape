require 'nokogiri'
require 'open-uri'
require 'pry'
require 'launchy'
#require 'HTTParty'

require_relative './ubuntu_scrape/version'
require_relative './ubuntu_scrape/cli'



module UbuntuScrape
  
  class Error < StandardError; 
  end
end
