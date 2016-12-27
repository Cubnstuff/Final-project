class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
      t.string :canvas
      t.string :title
      t.integer :rating
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
