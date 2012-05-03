module BaseModel 
  extend ActiveSupport::Concern

  module ClassMethods
    def fulltext(q, in_fields = [])
      ids = self.search_ids do
        fulltext q do
          fields *in_fields
        end
      end

      where(:id => ids)
    end
  end

end
