class CreateExamItems < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_items do |t|
      t.string :item_name
      t.string :determine_typr

      t.timestamps
    end
  end
end
