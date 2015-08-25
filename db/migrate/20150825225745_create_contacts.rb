class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :profile, index: true
      t.references :user, index: true
      t.string :name
      t.string :number
      t.string :email
      t.string :city
      t.string :state
      t.text :about_
      t.text :notes
      t.text :tags

      t.timestamps
    end
  end
end
