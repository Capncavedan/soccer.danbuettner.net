RSpec.describe 'h8j' do

  before do
    get "/h8j"
  end

  it "has a bit of text" do
    expect(last_response.body).to_not be_empty
  end

end
