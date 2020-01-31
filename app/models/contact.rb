class Contact < ApplicationRecord
  belongs_to :user

  has_many :contact_groups
  has_many :groups, through: :contact_groups

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\A(\w|[.])+[@]\w+[.][a-z]{2,}\z/i}

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def friendly_updated_at
    created_at.strftime("%b %d, %Y")
  end
end 
