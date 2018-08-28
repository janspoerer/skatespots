module ApplicationHelper
  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
  
  def get_cities
    City.all.map do |city|
      [city.name]
    end
  end
end
