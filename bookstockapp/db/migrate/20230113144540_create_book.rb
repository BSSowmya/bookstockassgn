class CreateBook < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :bookname
      t.string :bookauthor
      t.integer :bookquantity
      t.timestamps
    end
  end
end
