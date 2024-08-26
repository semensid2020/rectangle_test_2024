class CreateCircles < ActiveRecord::Migration[7.0]
  def change
    create_table :circles do |t|
      t.integer :test_id, precision: 30, scale: 6, null: false
      t.decimal :center_x, precision: 30, scale: 6, null: false
      t.decimal :center_y, precision: 30, scale: 6, null: false
      t.decimal :radius, precision: 30, scale: 6, null: false
      t.boolean :floating_required, null: false, default: false
      t.decimal :min_x, precision: 30, scale: 6
      t.decimal :min_y, precision: 30, scale: 6
      t.decimal :max_x, precision: 30, scale: 6
      t.decimal :max_y, precision: 30, scale: 6

      t.timestamps
    end
  end
end
