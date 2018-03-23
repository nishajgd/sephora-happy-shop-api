require 'rails_helper'

RSpec.describe Product, type: :model do

  context "validate product attributes" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:price) }
  end

  it 'has a valid product' do
   expect(FactoryGirl.create(:product)).to be_valid
  end
end
