class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :number
      t.string :email
      t.references :user, index: true
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :university
      t.string :degree_of_study
      t.integer :year
      t.string :current_employer
      t.string :title
      t.text :duties
      t.references :user, index: true

      t.timestamps
    end
  end
end
