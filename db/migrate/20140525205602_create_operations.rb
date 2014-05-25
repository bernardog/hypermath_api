class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.float :x
      t.float :y
      t.float :result
      t.integer :which

      t.timestamps
    end
  end
end
