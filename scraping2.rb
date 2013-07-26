require 'nokogiri'
class Post
  attr_reader :title, :url, :points, :item_id

  def initialize(args)
    @comments=[]
    @title  =args[:title]
    @url    =args[:url]
    @points =args[:points]
    @item_id=args[:item_id]
  end

  def comments
    @comments
  end

  def add_comments(comments)
    @comments << comments
  end

  def to_s
  @title
  @points
  @url
  puts
  @comments
  return
  end
end

# def extract_usernames(doc)
#   doc.search('.comhead > a:first-child').map do |element|
#     element.inner_text
#   end
# end

class Comment
  attr_reader :content, :username

  def initialize(args)
    @contents =args[:contents]
    @username =args[:username]
  end
end


def scrape(url)
  return if url =[]

doc.search('.subtext > span:first-child').map { |span| span.inner_text}






end

# doc.search('.subtext > span:first-child').map { |span| span.inner_text}
# doc.search('.subtext > a:nth-child(3)').map {|link| link['href'] }
# doc.search('.title > a:first-child').map { |link| link.inner_text}
# doc.search('.title > a:first-child').map { |link| link['href']}
# doc.search('.comment > font:first-child').map { |font| font.inner_text}


my_post=Post.new{post.html} 

