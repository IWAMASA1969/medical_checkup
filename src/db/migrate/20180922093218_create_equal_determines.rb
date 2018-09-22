class CreateEqualDetermines < ActiveRecord::Migration[5.2]
  def change
    create_table :equal_determines do |t|

      t.timestamps
    end
  end
end
