module RestaurantsHelper

  def zip_options
    [
      ["NYC", 123], 
      ["ZP", 324], 
      ["DENVER", 751], 
    ]
  end

  def cuisines_options
    Cuisine.select("id, name").map{|c| [c.name, c.id] }
  end

end
