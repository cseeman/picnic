# frozen_string_literal: true

RSpec.describe Picnic::Actions::Home::Show do
  let(:params) { Hash[] }

  it "response to the home GET request" do
    response = subject.call(params)
    expect(response).to be_successful
    expect(response.body).to eq(["Would you like to picnic?"])
  end
end
