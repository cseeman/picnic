# frozen_string_literal: true

module Picnic
  class Routes < Hanami::Routes
    root to: "home.show"
    get "/food", to: "food.index"
  end
end
