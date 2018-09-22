class CreateRangeDetermines < ActiveRecord::Migration[5.2]
  def change
    create_table :range_determines do |t|

      t.timestamps
    end
  end
end
