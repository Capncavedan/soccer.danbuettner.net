RSpec.describe 'h12r' do

  before do
    get "/h12r"
  end

  it "has a bit of text" do
    expect(last_response.body).to include "NW Soccer Team H12R"
  end

end
