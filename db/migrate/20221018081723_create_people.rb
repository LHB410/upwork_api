class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :sex
      t.integer :age
      t.string :name
      t.string :type
      t.references :family, foreign_key: true
      t.timestamps
    end
  end
end
