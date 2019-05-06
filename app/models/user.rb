class User < ApplicationRecord

      has_many :events, foreign_key: 'admin_id', class_name: 'User'
      has_many :events, through: :attendances
      has_many :attendances

  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
