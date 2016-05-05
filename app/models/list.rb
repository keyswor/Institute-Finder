class List < ActiveRecord::Base
	validates :institute, :course, :duration, :fee, presence: true
end
