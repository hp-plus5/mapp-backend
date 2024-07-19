class Collection < ApplicationRecord
    has_many :places, dependent: :destroy
    
    # access these by calling `serializable_hash` on an instance
    ActiveModel::Serializers::JSON
    def attributes
        { 'file_name' => nil, 'contents' => nil }
    end
end
