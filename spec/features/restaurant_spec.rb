require 'rails_helper'

describe 'average_rating' do

  context 'no reviews' do
    it 'returns "N/A" when thre are no reviews' do
      restaurant = Restaurant.create(name: 'The Ivy')
      expect(restaurant.average_rating).to eq 'N/A'
    end
  end

  context 'multiple reviews' do
    it 'returns the average' do
      restaurant = Restaurant.create(name: 'The Ivy')
      restaurant.reviews.create(rating: 1)
      restaurant.reviews.create(rating: 5)
      expect(restaurant.average_rating).to eq 3
    end
  end

end