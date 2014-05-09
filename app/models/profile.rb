class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nickname, type: String #
  field :age,      type: Integer
  field :gender,   type: String
  field :birthday, type: String

  belongs_to :user
end
