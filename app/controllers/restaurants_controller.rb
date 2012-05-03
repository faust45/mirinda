class RestaurantsController < ApplicationController
  has_scope :fulltext, :as => :name
  has_scope :by_zip
  has_scope :by_cuisine

  def index
    @restaurants = apply_scopes(Restauran).all
  end

end
