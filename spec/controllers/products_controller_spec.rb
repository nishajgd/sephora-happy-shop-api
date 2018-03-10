require 'rails_helper'
require 'json'

RSpec.describe Api::V1::ProductsController, type: :controller do
  describe "Products API" do
    context "With Valid Request" do
      it "fetch all products" do
        get :index, params: { page: { number: 1 } }
        expect(response).to be_success
        jdata = JSON.parse response.body
        expect(Product.count).to eq(jdata['data'].length)
        expect(Product.count).to eq(jdata['meta']['total-count'])
      end
      it "should get filtered products" do
        get :index, params: { filter: 'First' }
        expect(response).to be_success
        jdata = JSON.parse response.body
        expect(Product.where(category: 'First').count).to eq(jdata['data'].length)
      end
    end
  end
end