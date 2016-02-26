class Room
  include Mongoid::Document
  field :name, type: String
  field :number_of_fans, type: Integer
  embedded_in :match
end
