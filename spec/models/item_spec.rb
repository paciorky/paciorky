require 'spec_helper'

describe Item do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:category_id) }

    it { should ensure_length_of(:name).is_at_least(3).is_at_most(100) }
    it { should ensure_length_of(:description).is_at_least(50) }
    it { should validate_numericality_of(:price) }
  end
end
