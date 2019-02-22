class Article < ApplicationRecord
	belongs_to :category
	should validate_presence_of(:title)
	should validate_presence_of(:content)

	scope :active, -> { where('active = ?', true) }
	scope :alphabetical, -> {order('title')}
	
end
