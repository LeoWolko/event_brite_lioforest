class Attendance < ApplicationRecord

		  belongs_to :user
		  belongs_to :event		  

after_create :email_event_confirmation

 def email_event_confirmation
		UserMailer.email_event_confirmation(self).deliver_now
end

end
