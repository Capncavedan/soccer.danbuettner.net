require 'spec_helper'

RSpec.describe 'index' do

  before do
    get "/"
  end

  it "has a bit of text" do
    expect(last_response.body).to_not be_empty
  end

end
