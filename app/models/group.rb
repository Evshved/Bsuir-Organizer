class Group < ApplicationRecord
  validates :number_of_group, length: { is: 6 }
  validates :id_group_api, length: { is: 5 }
  validates :empty, length: { minimum: 4, maximum: 6 }
end
