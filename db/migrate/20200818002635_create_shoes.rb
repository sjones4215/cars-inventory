class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :type
      t.string :color
      t.string :string

      t.timestamps
    end
  end
end
