# == Schema Information
#
# Table name: alunos
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  birthdate  :date             not null
#  email      :string           not null
#  mobile     :string           not null
#  gender     :string           not null
#  avatar     :string
#  status     :integer          not null
#  more_info  :text
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Aluno < ActiveRecord::Base
  belongs_to :user
  enum status: { pending:0, active:1, inactive:2 }
  validates_presence_of :first_name, :last_name, :birthdate, :email, :mobile, :gender, :status, :user

  def fullname
    "#{first_name} #{last_name}"
  end

  def age
    now = Time.now.utc.to_date
    now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
  end

  def humanize_gender
    return "Feminino" if gender == "F"
    return "Masculino" if gender == "M"
    return "Outro" if gender == "O"
  end
end
