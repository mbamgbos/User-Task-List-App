class TaskList < ActiveRecord::Base
	has_many :tasks
	
	validates :name, :description, presence: {message: "is required" }
	
	validates :name, uniqueness: true
end
