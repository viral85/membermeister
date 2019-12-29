class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :parent_id

      t.timestamps
    end
    add_index :students, :parent_id
  end
end
