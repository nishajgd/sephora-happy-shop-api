require 'rails_helper'

RSpec.describe Product, type: :model do
  context "Search with category" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:price) }
  end
end


