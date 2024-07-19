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
      description: "Returns all collections ever"
    field :places, [Types::PlaceType],
      description: "Returns all places ever"
    field :users, [Types::UserType],
      description: "Returns all users ever"

    def collections
      Collection.all
    end

    # def collection
    #   Collection.find_by
    # end

    def places
      Place.all
    end

    def users
      User.all
    end
  end
end

# terminology
# "query" is the request that's in graphiQL
# comes into query_type.rb
# sees "field", which is a method that says, "register this method as a findable methods". (I wonder if I can think of this as "field all requests matching X over here"/as a verb rather than "field on a form"/as a noun)
# looks at the type attributes linked on the `field` line, says "are all of the properties for this Type valid attributes on that Type?"
# if they are, then goes and looks for a resolver method matching the name passed to `field` as a symbol, ie `:collections`.
# finds it lower in the file, calls on it
# rails executes the resolver function, comes back with content
# "resolvers" are the lines in this file that call `field :models` AND the method they call on that actually goes and gets things from Rails

# for user authentication
# frontend's gonna call a graphQL mutation for logging in
# i haven't fucked with mutations yet, but they're any updates to the DB in some way whereas "queries" are all GETs
# the mutation will call on rails the same way these resolvers do
# backend will return a JWT (token). don't know more than that yet.

# focus on:
# remembering how password_digest works in rails; what needs handled manually?
# for your front end to connect to your back end to make queries OR mutations, there needs to be another framework to couple itself with react. Relay is a smaller option, Apollo is a bigger option. Which gets referenced more often in job descriptions? Probably Apollo, even though it's overkill for this use case. Everything is overkill for this use case. Joe said he thinks I'll need help setting that up either way, so maybe i snag his time this weekend.
# then test/play with getting and updating a collection by id. This will prepare you for the user stuff without all the authentication concerns.
# once i can exchange queries AND mutations with the backend, it's time to worry about JWTs. I should write out the process as it will happen chronologically before I try to code it. And make it searchable/referencable within my own general notes so that I can have it for next time.
