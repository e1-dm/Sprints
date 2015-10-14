class PersonsHolder
  require_relative 'data_manager'

  data_manager = DataManager.new("/home/dmitriy/RubymineProjects/Sprint2/in.csv")
  data_manager.sort_by_name
  data_manager.write("/home/dmitriy/RubymineProjects/Sprint2/out.csv")
end