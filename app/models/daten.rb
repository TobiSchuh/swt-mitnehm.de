class Daten < ActiveRecord::Base
	validates :was, presence: true
	validates :standort, presence: true
	validates :wohin, presence: true
	validates :datum, presence: true
end
