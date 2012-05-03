class RestaurantsController < ApplicationController
  has_scope :by_name
  has_scope :by_keywords
  has_scope :by_zip
  has_scope :by_cuisine

  def index
    @restaurants = apply_scopes(Restauran).all
  end

end
