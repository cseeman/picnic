# frozen_string_literal: true

module Picnic
  module Actions
    module Food
      class Index < Picnic::Action
        include Deps[rom: 'persistence.rom']

        def handle(*, response)
          food = rom.relations[:food]
                    .select(:name, :description)
                    .order(:name)
                    .to_a

          response.format = :json
          response.body = food.to_json
        end
      end
    end
  end
end
