require_relative 'util'
 
class Browser
  def run!
    while true
      p 'Welcome To FireWolf'
      print 'Please Enter a URL or "Q" to Quit>'
      puts
      url = gets.chomp
      break if url == 'Q'
      page = Page.new(:url => url)
      page.fetch!
      page.to_s
    end
  end
end
 
Browser.new.run!
