get '/' do
  # p params
  # @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do

    if params[:user_input] == ''
      @grandma = "Where'd you go you little shit?!"
    elsif params[:user_input] == params[:user_input].upcase 
      @grandma = "NO, NOT SINCE #{rand(1934..1989)}!"
    else
      @grandma = "HUH?! SPEAK UP, SONNY!"
    end
erb :index
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"

end
