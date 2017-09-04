class Task < ActiveRecord::Base
	validates :title, :due_date, presence: true
end
