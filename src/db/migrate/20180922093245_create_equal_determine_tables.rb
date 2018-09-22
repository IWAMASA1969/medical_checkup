class CreateEqualDetermineTables < ActiveRecord::Migration[5.2]
  def change
    create_table :equal_determine_tables do |t|
      t.float :equal_value
      t.string :determine_result

      t.timestamps
    end
  end
end
