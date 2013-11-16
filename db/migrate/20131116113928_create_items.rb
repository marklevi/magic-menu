class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :menu
      t.string :name
      t.string :price
    end
  end
end
