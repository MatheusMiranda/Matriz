class Attachment < ActiveRecord::Base
	validates_presence_of :title
				
  has_attached_file :document, styles: lambda { |a| a.instance.check_file_type }
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}
	
	def is_image?
		self.document.content_type =~ %r(image)
	end

	def is_pdf?
		self.document.content_type =~ %r{\.(pdf)$}i
	end

	def check_file_type
		if self.is_image?
			{
		  :thumb => "200x200>", 
			:medium => "500x500>"
			}
		elsif self.is_pdf?
			{
			:thumb => ["200x200>", :png], 
			:medium => ["500x500>", :png]
			}
		end
	end

end
