class Batch
  attr_reader :type_of_cookies, :how_many_cookies, :time_til_done

  def initialize(args)  
    @type_of_cookies = args[:type]
    @how_many_cookies = args[:num_of_cookies]
    @time_til_done = args[:time_til_done]
    @status = :doughy     #  =>   "doughy"

    # @dough = args[:dough]
    # @almost_ready= almost_ready
    # @ready = args[:ready]
    # @burned = burned
    # @batch = batch
  end

  def to_s
    @type_of_cookies
    @how_many_cookies
    @time_til_done
    @status
  end

end




# test = { :cookie_type => "choco" }
# test["cookie_type"]

# if batch.status == :doughy



# multiple types of cookies!  QUESTION: are there unique attributes of the subclasses of cookies????
# if so, then you should have inheritance.

# @num_chips = 0
# @peanut_butter_amount = 0
# @num_raisins = 0

# ChocoBatch, PeanutBatch, ????




class Oven
  attr_reader :pan

  def initialize
      @pan = nil   # maybe later use [
    end

    def bake
      counter = 0 
      puts "Let's bake some " + @pan.type_of_cookies + "!!!!"
      puts "The time to bake your cookies are " + @pan.time_til_done.to_s + " minutes"
      while @pan.time_til_done.to_i > counter
        counter += 1 
          puts counter
      end
      puts "You're cookies are ready!"
    end

    def insert_batch(batch)
      @pan = batch
    end

  end



# chocolate_chip = Cookies.new(type: "chocolate chip", num_of_cookies: 12, dough: true, almost_ready: false, ready: false, burned: false) 

# p new_batch = Oven.new(chocolate_chip)

# create a new oven
# make 13 cookies and put them in a batch
# put the batch in the oven
# bake batch for 15 minutes
# check status of the batch
# if "done" then remove from oven
# 

my_oven = Oven.new
choco_batch = Batch.new({type: "Chocolate Chip", num_of_cookies: 13, time_til_done: 20})
peanut_butter_batch = Batch.new({type: "Peanut Butter", num_of_cookies: 13, time_til_done: 18})
oatmeal_batch = Batch.new({type: "Oatmeal", num_of_cookies: 13, time_til_done: 15})
my_oven.insert_batch(choco_batch)
my_oven.insert_batch(peanut_butter_batch)
my_oven.insert_batch(oatmeal_batch)
my_oven.bake




# cookie class
# time_til_done = ?   (is it passed in, or is it hardcoded?)
# @status associated with the cookie

