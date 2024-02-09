class Room < ApplicationRecord
  broadcasts_to -> (room){:rooms_list}
  has_many :messages
end
