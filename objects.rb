class Person # => must start with Uppercase

  attr_reader :year_of_birth # => This is same as Line 16-18
  attr_writer :job_title # => This is same as Line 20-23
  attr_accessor :first_name, :last_name # => Reader & Writer

  def initialize(first_name, last_name, year_of_birth) # => states
    @first_name    = first_name # => instences variable
    @last_name     = last_name # => instences variable
    @year_of_birth = year_of_birth # => instences variable
    @job_title     = 'Baby'
  end

  # Behavior
  def greetings # => instences Method
    "Hello, #{@first_name} #{@last_name}"
  end

  #Readers => returns current value of instences
  #def year_of_birth
  #  return @year_of_birth
  #end

  #Writer Method modifie instences variable
  #def job_title=(job_title) # => need arguments
  #  @job_title = job_title # => name.job_title=('job')
  #end
end
