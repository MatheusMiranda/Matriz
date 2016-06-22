json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :title
  json.url attachment_url(attachment, format: :json)
end
