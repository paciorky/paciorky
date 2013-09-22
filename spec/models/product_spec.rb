require 'spec_helper'

describe Product do
  context 'instance methods' do
    before :each do
      @product = FactoryGirl.build :product
    end

    context '#name_shorten' do
      it 'returns full name for short string' do
        @product.name = 'short'
        expect(@product.name_shorten).to eq('short')
        end

      it 'returns shorten name for too long string' do
        @product.name = 'very very long product name'
        expect(@product.name_shorten).to eq('very very long produ...')
      end
    end
  end
end
