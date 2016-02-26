class Match
  include Mongoid::Document
  field :due_date, type: DateTime
  field :team_one, type: String
  field :team_one_score, type: String
  field :team_one_avatar_url, type: String
  field :team_two, type: String
  field :team_two_score, type: String
  field :team_two_avatar_url, type: String

  embeds_many :rooms

  accepts_nested_attributes_for :rooms, :allow_destroy => true
end
