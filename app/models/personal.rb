# == Schema Information
#
# Table name: personals
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  birthdate  :date             not null
#  email      :string           not null
#  mobile     :string           not null
#  cref       :string           not null
#  gender     :string           not null
#  avatar     :string
#  status     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Personal < ActiveRecord::Base
  belongs_to :user
  enum status: { pending:0, active:1, inactive:2 }
  validates_presence_of :first_name, :last_name, :birthdate, :email, :mobile, :cref, :gender, :status, :user
end
