class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :location
      t.string :customer_name
      t.string :customer_contact
      t.string :customer_other_details
      t.string :project_budget_details
      t.string :discription

      t.timestamps
    end
  end
end
