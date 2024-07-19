class Place < ApplicationRecord
    belongs_to :collection
    
    # access these by calling `serializable_hash` on an instance
    ActiveModel::Serializers::JSON
    def attributes
        { 'name' => nil, 'latitude' => nil, 'longitude' => nil }
    end
end
