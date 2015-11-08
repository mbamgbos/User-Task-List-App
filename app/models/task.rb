class Task < ActiveRecord::Base
  belongs_to :task_list
  
  validates :title, :priority, :due_date, :task_list, presence: { message: "is required" } 
  
  validates :priority, numericality: true
  
  validates :priority, inclusion: { in: 1..10, message: 'needs to be between 1 and 10' }
  
end
