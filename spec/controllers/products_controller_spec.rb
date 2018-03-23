require 'rails_helper'
require 'json'

RSpec.describe Api::V1::ProductsController, type: :controller do  
  describe "Products API" do
    context "With Valid Request" do
      it "fetch all products with success response" do
        get :index, params: { page: 1  }
        expect(response).to be_success
        jdata = JSON.parse response.body
        expect(Product.count).to eq(jdata['data'].length)
        expect(Product.count).to eq(jdata['meta']['total-count'])
      end
    end
  end

end