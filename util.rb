require 'net/http'
require 'uri'
require 'nokogiri'
 
class Page
  attr_reader :url,:links,:title
 
  def initialize(args)
    @url   = args[:url]
    @links = [] 
    @title = ''
    @content = ''
  end
  
  def fetch!
    doc = Nokogiri::HTML(Net::HTTP.get_response(URI.parse(@url)).body)
    self.parse_title(doc)
    self.parse_links(doc)
    @content = doc.css('p').text
  end
 
  def parse_title(doc)
    doc.search('title').map {|element| @title = element.inner_text}
  end  
 
  def parse_links(doc)
    @links = []
    doc.search('a').map do |element| 
      next if element['href'] == nil
      @links << element['href'] if element['href'][/https?:\/\/w{3}?.?.{1,}.com/]
    end
  end
 
  def to_s
    p "Title: #{@title}"
    p "Content Length: #{@content.length}"
    puts
    p "Links:"
    puts @links
    puts
  end
 
end
