class Restauran < ActiveRecord::Base
  include BaseModel

  attr_accessible :name, :zip, :keywords, :cuisine_id

  belongs_to :cuisine 

  searchable do
    text :name, :keywords, :zip, :cuisine_id
  end


  def to_s
    name
  end

  class <<self
    def by_zip(zip)
      where :zip => zip
    end

    def by_cuisine(id)
      where :cuisine_id => id 
    end

    def by_name(q)
      fulltext q, [:name]
    end

    def by_keywords(q)
      fulltext q, [:keywords]
    end
  end

end
