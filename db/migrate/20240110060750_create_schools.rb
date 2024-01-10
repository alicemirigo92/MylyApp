class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :location
      t.string :curriculum
      t.decimal :school_fees

      t.timestamps
    end
  end
end
