describe 'GET /api/v1/products' do
  let!(:products) { FactoryGirl.create_list(:product, 10) }

  before { get '/api/v1/products', headers: { 'Accept': 'application/vnd' } }
  it 'returns HTTP status 200' do
    expect(response).to have_http_status 200
  end

  it 'returns all products' do
    body = JSON.parse(response.body)
    expect(body['data'].size).to eq(10)
  end
end


describe "GET /api/v1/product/:id" do
  before do
    get '/api/v1/products/', params: {id: product.id}
  end

  let(:product) { FactoryGirl.create(:product)  }

  it "returns http success" do
    expect(response).to have_http_status(:success)
  end

  it 'returns the product' do
    body = JSON.parse(response.body)
    expect(body['data'].size).to eq(1)
  end
end
