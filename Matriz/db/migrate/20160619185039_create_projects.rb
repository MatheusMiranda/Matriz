class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :owner
      t.text :description
      t.string :responsible

      t.timestamps null: false
    end
  end
end
