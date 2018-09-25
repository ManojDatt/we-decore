class CreateBreakFasts < ActiveRecord::Migration[5.0]
  def change
    create_table :break_fasts do |t|
      t.references :food, foreign_key: true
      t.string :message
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end
