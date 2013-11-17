class Menu < ActiveRecord::Base
  has_and_belongs_to_many :items
  validates :name, uniqueness: true

end
