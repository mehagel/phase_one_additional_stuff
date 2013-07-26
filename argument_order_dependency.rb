class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(home)
    @address = home[:address]
    @square_feet = home[:square_feet]
    @num_bedrooms = home[:num_bedrooms] || 3
    @num_baths = home[:num_baths] || 2
    @cost = home[:cost] || 320_000
    @down_payment = home[:down_payment] || 0.20
    @sold = home.fetch(:sold, false)
    @short_sale = home.fetch(:short_sale, true)
    @has_tenants = home.fetch(:has_tenants, false)
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end

my_house = House.new(address: " Main St, Canby",
                     num_baths: 5, 
                     square_feet: 2400,
                     num_bedrooms: 12,
                     num_baths: 21,
                     cost: 540000,
                     down_payment: 0.20,
                     sold: false,
                     has_tenants: false,
                     short_sale: false)
p my_house.to_s
p my_house.square_feet
p my_house.down_payment
