class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :profile, index: true
      t.string :project_name
      t.text :project_description
      t.references :user, index: true
      t.text :business_plan

      t.timestamps
    end
  end
end
