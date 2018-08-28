module ApplicationHelper
  def get_cities
    City.all.map do |city|
      [city.name]
    end
  end
end
