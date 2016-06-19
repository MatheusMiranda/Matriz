class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :CPF
      t.integer :CNPJ
      t.integer :RG
      t.string :adress
      t.integer :adrees_number
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :CEP
      t.text :adress_complement
      t.string :email
      t.string :marital_status
      t.string :company_name
      t.string :trading_name

      t.timestamps null: false
    end
  end
end
