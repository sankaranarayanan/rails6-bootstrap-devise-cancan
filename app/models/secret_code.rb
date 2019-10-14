class SecretCode < ApplicationRecord
  scope :not_assigned, -> { where("user_id is null") }

  enum times_option: {"1":1, "10": "10", "20": 20, "50": 50, "100": 100}

  attr_accessor :no_of_times

  belongs_to :user, optional: true
  paginates_per 10

  def self.generate_code
  	SecretCode.new(code: rand(36**8).to_s(36)).save!
  end
end
