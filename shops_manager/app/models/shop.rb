class Shop < ActiveRecord::Base
	validates :chain, presence: true
	validates :name, presence: true
end
