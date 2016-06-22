class AddPaperclipToAttachment < ActiveRecord::Migration
  def change
		add_attachment :attachments, :document
  end
end
