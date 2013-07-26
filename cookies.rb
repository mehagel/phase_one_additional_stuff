class Cookies
  attr_accessor :type_of_cookies, :how_many_cookies, :dough, :almost_ready?, :ready, :burned?

  def initialize(args)  
    @type_of_cookies = args[:type]
    @how_many_cookies = args[:num_of_cookies]
    @dough = args[:dough]
    @almost_ready?= almost_ready?
    @ready = args[:ready]
    @burned? = burned?

  end
end

class Oven < Cookies

    def initialize
      super
    end

end

chocolate_chip = Cookies.new(type: "chocolate chip", num_of_cookies: 12, dough: true, almost_ready?: false, ready?: false, burned?: false) 
  
p chocolate_chip
