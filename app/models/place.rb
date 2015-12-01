class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
	validates :address, :presence => true, :uniqueness => true
	validates :description, :presence => true, :length => { :minimum => 3, :maximum => 140 }
end
