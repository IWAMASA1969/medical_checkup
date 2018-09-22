class CreateRangeDetermineTables < ActiveRecord::Migration[5.2]
  def change
    create_table :range_determine_tables do |t|
      t.float :from_value
      t.float :to_value
      t.string :determine_result

      t.timestamps
    end
  end
end
