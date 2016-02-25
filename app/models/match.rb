class Match
  include Mongoid::Document
  field :due_date, type: DateTime
  has_and_belongs_to_many :teams
end
