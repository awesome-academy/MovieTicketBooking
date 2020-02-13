class User < ApplicationRecord
  before_save :email_downcase
  validates :name, presence: true, length: { maximum: Settings.val_name_max }
  validates :email, presence: true, length: { maximum: Settings.val_email_max },
                    format: { with: Settings.email_regex },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true,
                       length: { minimum: Settings.val_pass_min }
  validates :phone, presence: true, length: { maximum: Settings.val_phone_max },
                    format: { with: Settings.phone_regex }
  has_secure_password
  enum role: %i[user admin]

  private

   def email_downcase
    email.downcase!
   end
end
