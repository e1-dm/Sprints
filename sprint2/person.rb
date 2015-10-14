class Person

  attr_accessor :name, :phone, :age, :address

  def initialize(params)
    @name = params[0]
    @phone = params[1]
    @age = params[2]
    @address = params[3]
  end

end