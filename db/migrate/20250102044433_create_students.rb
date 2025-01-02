class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone
      t.string :address
      t.string :gender
      t.timestamps
    end
  end
end
