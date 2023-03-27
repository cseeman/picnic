# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :food do
      primary_key :id
      column :name, :text, null: false
      column :description, :text, null: false
    end
  end
end
