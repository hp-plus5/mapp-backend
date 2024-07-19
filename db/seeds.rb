# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

collection_one = Collection.create(
    {
        file_name: "upload number 1",
        contents: " stuff"
    }
)

collection_two = Collection.create(
    {
        file_name: "upload number 2",
        contents: "yes this is content speaking "
    }
)

places = Place.create(
    [
        { 
            name: "Chez moi",
            latitude: 12.44,
            longitude: 59.11128273,
            collection: collection_one
        },
        { 
            name: "Chez toi",
            latitude: 12.54,
            longitude: 59.173,
            collection: collection_one
        },
        { 
            name: "Chez baby got back",
            latitude: 12.4433,
            longitude: 59.128273,
            collection: collection_two
        },
        { 
            name: "Chez halllaaaa",
            latitude: 15.54,
            longitude: 61.173,
            collection: collection_two
        },
        { 
            name: "Chez tooshie",
            latitude: 13.54,
            longitude: 59.13,
            collection: collection_two
        },
    ]
)