# Exercise 2
# 1. Create Class
class PaperBoy
# 2. Create initialize method with several attributes;
  attr_reader :earnings
  attr_accessor :name, :experience

  def initialize(name)
    @name        = name
    @experience  = 0 # => (The number of papers boy delivered)
    @earnings    = 0 # => (Amount of money earned) READ-ONLY
  end
# 3. Day per paperboy gets
#    Numbers of houses to deliver the paper
#    Pay is $0.25 / paper delivered,
#           $0.50 / paper if over quota
#           -$2.00 if didn't hit quota
#    Quota is min. of 50 papers
#          calculate 50 + 1/2 of delivered papers before

# 4. Create three methods; 'quota', 'deliver', 'report'

#    'Quota : Calculateand return
#             the boy's quota for next delivery'
  def quota
    50 + (@experience / 2)
  end

#    'Deliver : Take 2 house numbers and
#               return $ earned on delivery as floating point number
#               It should be boy's experience
#               'start_address' = smaller number than the
#               'end_address'
  def deliver(start_address, end_address)
    units = (end_address - start_address)

    if units < quota
      pay = (units * 0.25) - 2.0
    elsif units == quota
      pay = units * 0.25
    else units > quota
      pay = units * 0.50
    end
    @experience += units
    @earnings += pay
  end

  def report
    puts "Hi, my name is #{@name}.
          I have delivered #{@experience} papers and earned $#{@earnings} so far!"
  end

end

tommy = PaperBoy.new("Tommy")

tommy.deliver(1, 50)
tommy.report
