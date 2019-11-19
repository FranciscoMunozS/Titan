class CreatePlayfields < ActiveRecord::Migration[5.2]
  def change
    create_table :playfields do |t|
      t.string :name
      t.string :dimensions
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
