require_relative 'C:/RubyProgramFiles/ubuntu_scrape/lib/enviro'
require 'HTTParty'
# the CLI class starts the program and interacts with the user
class UbuntuScrape::CLI 
    def run
        puts 'Welcome to the Ubuntu release fetcher. 
        If you would like to learn about the four most 
        recent releases of Ubuntu to please enter yes or no.'
      
        choice = gets.chomp
    case choice 
    when 'yes'
         then scrape_titles 
         #Launchy.open("http://releases.ubuntu.com/") 
        
     
    when 'no'
        puts 'Have a Wonderful Day!'
        end

    end
end 
# the scraper class gets the 4 Ubuntu Releases and lists them
#class Scraper

    def scrape_titles
        site ="http://releases.ubuntu.com/"  #enter your site to test here
        page = Nokogiri::HTML(open(site))
        section = page.at_css("body > section > div:nth-child(2) > ul > li:nth-child(1) > a[href]").text
        #section['href']
    puts section
    end

    
    
    

    def ubuntu_list
        ubuntu_titles = ['bionic', 'xenial', 'eoan', 'disco']
        output = "The Four Current Versions of Ubuntu Are:"
        ubuntu_titles.each_with_index do |name, index|
          output << " #{index +1}. #{name}"
        end
        p output
    
    end
    #ubuntu_list(@ubuntu_titles)

#scraper = Scraper.new
#puts scraper.scrape_titles
