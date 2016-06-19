json.array!(@clients) do |client|
  json.extract! client, :id, :name, :CPF, :CNPJ, :RG, :adress, :adrees_number, :neighborhood, :city, :state, :CEP, :adress_complement, :email, :marital_status, :company_name, :trading_name
  json.url client_url(client, format: :json)
end
