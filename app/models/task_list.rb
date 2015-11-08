class TaskList < ActiveRecord::Base
	has_many :tasks
	
	validates :title, :description, presence: {message: "is required" }
	
	validates :title, uniqueness: true
end
