require 'nokogiri'
require 'open-uri'

class Post 
  attr_reader :title, :url, :points,:item_id

  def initialize(args)
    @comments = []
    @title = args[:title]
    @url =args[:url]
    @points = args[:points]
    @item_id = args[:item_id]
  end

  def comments
    @comments
  end

  def add_comment(comment)
    @comments << comment
  end

  def to_s
    p @title
    p @points
    p @url

    @comments.each {|comment| p comment.content[0..15]}
    return
  end
end


class Comment
  attr_reader :content,:username

  def initialize(args)
    @content = args[:content]
    @username = args[:username]
  end
end

def scrape(url)
  #doc = Nokogiri::HTML(File.open('post.html'))
  return if url == []

  file_html = open(url[0])
  doc = Nokogiri::HTML(file_html)


  arguments = []

  arguments << :title
  doc.search('title').map do |element|
    element.inner_text
    arguments << element.inner_text
  end

  arguments << :url
  doc.search('.title:nth-child(2) > a:first-child').map do |element|
    element['href']
    arguments << element['href']
  end

  arguments << :item_id
  doc.search('.subtext > span:first-child').map do |element|
    arguments << element['id'].gsub('score_','').to_i
  end

  arguments << :points
  doc.search('.subtext > span:first-child').map do |element|
    arguments << element.inner_text.to_i
  end
  post = Post.new(Hash[*arguments])

  usernames = []
  doc.search('.comhead > a:first-child').map do |element|
    usernames << element.inner_text
  end

  comments = []
  doc.search('.comment').map do |element|
    comments << element.inner_text
  end

  usernames.each_with_index do |username,i|
    post.add_comment(Comment.new(:content => comments[i], :username => username))
  end

  p post.to_s

end

scrape(ARGV)



