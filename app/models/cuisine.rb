class Cuisine < ActiveRecord::Base
  include BaseModel

  has_many :restaurants

  def to_s
    name
  end

end
