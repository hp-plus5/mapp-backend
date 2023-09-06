# frozen_string_literal: true

module Types
  class CollectionType < Types::BaseObject
    field :id, ID, null: false
    field :file_name, String
    field :contents, String
    field :places, [Types::PlaceType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
