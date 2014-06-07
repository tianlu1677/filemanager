class Leavemsg
  include Mongoid::Document
  include Mongoid::Timestamps

  validates :msgname, :msgcontent, presence: true
  field :msgname, type: String
  field :msgcontent, type: String
end
