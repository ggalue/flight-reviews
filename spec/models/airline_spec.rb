require 'rails_helper'

RSpec.describe Airline, type: :model do
	describe '#avg_score' do
    it 'calculates average score of all reviews' do
      airline = create(:airline)
      review_1 = create(:review, score: 3, airline_id: airline.id)
      review_2 = create(:review, score: 5, airline_id: airline.id)
      expect(airline.reviews.size).to eq 2
      expect(airline.reviews.sum(:score)).to eq 8
    end

    it 'sets the review avg on airline' do
    	airline = create(:airline)
      review_1 = create(:review, score: 3, airline_id: airline.id)
      review_2 = create(:review, score: 5, airline_id: airline.id)
      expect(airline.avg_score).to eq 4
    end
  end

  describe 'callbacks' do
    it 'ensures a slug on create' do
      airline = create(:airline, slug: 'fake-airline')
      airline.save
      expect(airline.slug).to eq('fake-airline')
    end
  end
end
