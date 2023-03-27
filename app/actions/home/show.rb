# frozen_string_literal: true

module Picnic
  module Actions
    module Home
      class Show < Picnic::Action
        def handle(*, response)
          response.body = "Would you like to picnic?"
        end
      end
    end
  end
end
