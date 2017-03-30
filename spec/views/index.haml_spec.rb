RSpec.describe 'index' do

  before do
    get "/"
  end

  it "has a bit of text" do
    expect(last_response.body).to include "H12R"
  end

end
