RSpec.describe 'h8j' do

  before do
    get "/h8j"
  end

  it "has a bit of text" do
    expect(last_response.body).to include "NW Soccer Team H8J"
  end

end
