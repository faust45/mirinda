class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :name, :blank => false
      t.string :keywords
      t.string :zip

      t.timestamps
    end
  end
end
