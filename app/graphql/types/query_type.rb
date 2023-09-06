module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    field :collections, [Types::CollectionType],
      description: "Returns all files uploaded ever"
    field :places, [Types::PlaceType],
      description: "Returns all places ever"

    def collections
      Collection.all
    end

    # def collection
    #   Collection.find_by
    # end

    def places
      Place.all
    end
  end
end
