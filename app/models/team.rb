class Team < ApplicationRecord
  has_many :users
  belongs_to :user, optional: true
  has_many :surveys
  has_many :responses, through: :users

  before_validation :set_code

  def self.generate_code
    rand.to_s[2..6]
  end

  def set_code
    self.code = Team.generate_code
    set_code if Team.find_by(code: code)
  end

end



