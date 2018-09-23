class CreateRangeDetermines < ActiveRecord::Migration[5.2]
  def change
    create_table :range_determines do |t|
      t.belongs_to :exam_item, index: true

      t.timestamps
    end
  end
end
