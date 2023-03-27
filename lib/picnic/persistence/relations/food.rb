# lib/picnic/persistence/relations/food.rb

module Picnic
  module Persistence
    module Relations
      class Food < ROM::Relation[:sql]
        schema(:food, infer: true)
      end
    end
  end
end
