# spec/requests/index_spec.rb

RSpec.describe "GET /food", type: :request do
  let(:food) { app["persistence.rom"].relations[:food] }

  before do
    food.insert(name: "Caramelised onion, courgette and Wensleydale quiche", description: "Classic quiche stars thinly sliced courgettes and their bright yellow flowers, along with crumbly Wensleydale, in the light, creamy filling.")
    food.insert(name: "Scotch eggs", description: "Traditional British dish consisting of a shelled hard-boiled egg that is wrapped in sausage, covered in breadcrumbs, and then deep-fried")
    food.insert(name: "Coronation Chicken sandwich", description: "Cooked chicken in a creamy curried dressing makes a sandwich fit for a Queen!")
    food.insert(name: "Sausage Rolls", description: "Savoury pastry meal, popular in current and former Commonwealth nations, consisting of sausage meat wrapped in puff pastry.")
  end

  it "returns a list of foods for a picnic" do
    get "/food"

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)
    expect(response_body.first).to have_key("name")
    expect(response_body.first).to have_key("description")
  end
end
