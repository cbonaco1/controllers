class Contact < ActiveRecord::Base
  validates :email, uniqueness: {scope: :user_id,
      message: "User cannot have the same email listed twice."}

  belongs_to(
    :user,
    :class_name => 'User',
    :foreign_key => :user_id,
    :primary_key => :id
  )
end
