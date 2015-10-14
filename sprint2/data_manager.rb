class DataManager
  require 'csv'
  require_relative 'person'
  attr_accessor :persons

  def initialize(path_to_file)
    @persons = []
    CSV.foreach(path_to_file) do |row|
      @persons << Person.new(row)
    end
  end

  def write(path_to_file)
    CSV.open(path_to_file, "wb") do |csv|
      @persons.each do |person|
        csv << [person.name, person.phone, person.age, person.address]
      end
    end
  end

  def method_missing(sort_type)
    case sort_type.to_s
      when "sort_by_name"
        puts 'Sorted by name'
        @persons.sort! { |a,b| a.name <=> b.name }
      when 'sort_by_age'
        puts 'Sorted by age'
        @persons.sort! { |a,b| a.age <=> b.age }
    end

  end

end