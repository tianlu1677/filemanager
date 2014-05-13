class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  validates :nickname, presence: true, length: { in: 1..10 }
  validates :age,   presence:true,  numericality: { only_integer: true }
	validates :gender, presence: true
	validates :birthday, presence: true 



  field :nickname, type: String #
  field :age,      type: Integer
  field :gender,   type: String
  field :birthday, type: String

  belongs_to :user
end
