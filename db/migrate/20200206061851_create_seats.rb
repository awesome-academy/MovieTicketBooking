class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.string :name
      t.boolean :is_enable, default: true
      t.references :rooms, null: false, foreign_key: true

      t.timestamps
    end
  end
end
