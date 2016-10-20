# Exercise 2
# 1. Create Class
class PaperBoy
# 2. Create initialize method with several attributes;
  attr_reader :earnings

  def initialize(name, experience, earnings)
    @name        = name
    @experience  = experience # => (The number of papers boy delivered)
    @earnings    = earnings # => (Amount of money earned) READ-ONLY
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
    50 + @experience / 2
  end

#    'Deliver : Take 2 house numbers and
#               return $ earned on delivery as floating point number
#               It should be boy's experience
#               'start_address' = smaller number than the
#               'end_address'
  def deliver(start_address, end_address)
    experience = (end_address - start_address)

    if experience < quota
      "You did less than quota, you loss $2 $#{experience * 0.25 - 2.0}"
    elsif experience == quota
      "You earn $#{experience * 0.25}."
    else experience > quota
      "You did more than quota, you earn $#{experience * 0.50}"
    end
  end

  def report

  end

end

tommy = PaperBoy.new("Tommy", "even")
