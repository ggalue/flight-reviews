class Airline < ApplicationRecord
	has_many :reviews

	before_create :_slugify

	def avg_score
		return 0 unless reviews.count.positive?
		
		reviews.average(:score).round(2).to_f
	end

	def _slugify
		self.slug = name.parameterize
	end
end
