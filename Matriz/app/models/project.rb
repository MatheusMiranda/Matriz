class Project < ActiveRecord::Base
  validates_presence_of :name, :owner, :description, :responsible
end
