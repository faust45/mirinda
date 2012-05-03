class CreateRestaurans < ActiveRecord::Migration
  def change
    create_table :restaurans do |t|
      t.string :name, :blank => false
      t.string :zip
      t.text   :keywords
      t.belongs_to :cuisine

      t.timestamps
    end
  end
end
