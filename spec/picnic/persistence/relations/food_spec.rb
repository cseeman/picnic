# frozen_string_literal: true

RSpec.describe 'GET /food', type: :request do
  let(:food) { app['persistence.rom'].relations[:food] }

  it 'Can save loads of food' do
    food.insert(name: 'Caramelised onion, courgette and Wensleydale quiche',
                description: 'Classic quiche stars thinly sliced courgettes and their bright yellow flowers, along with crumbly Wensleydale, in the light, creamy filling.')
    food.insert(name: 'Scotch eggs',
                description: 'Traditional British dish consisting of a shelled hard-boiled egg that is wrapped in sausage, covered in breadcrumbs, and then deep-fried')

    expect(food.to_a.count).to eq(2)
  end
end
