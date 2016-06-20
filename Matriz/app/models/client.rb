class Client < ActiveRecord::Base
	validates_presence_of :name, :CPF, :CNPJ, :RG, :adress, :adress_number, :neighborhood
	validates_presence_of :city, :state, :CEP, :email, :marital_status, :adress_complement
	validates_presence_of :company_name, :trading_name
end
