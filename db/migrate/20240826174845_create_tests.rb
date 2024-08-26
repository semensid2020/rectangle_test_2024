class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.decimal :min_x, precision: 30, scale: 6
      t.decimal :min_y, precision: 30, scale: 6
      t.decimal :max_x, precision: 30, scale: 6
      t.decimal :max_y, precision: 30, scale: 6
      t.boolean :floating_required, null: false, default: false

      t.timestamps
    end
  end
end
