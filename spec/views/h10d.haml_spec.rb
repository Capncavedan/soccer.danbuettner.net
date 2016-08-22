RSpec.describe 'h10d' do

  before do
    get "/h10d"
  end

  it "has a bit of text" do
    expect(last_response.body).to include "NW Soccer Team H10D"
  end

end
