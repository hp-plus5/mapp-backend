class Collection < ApplicationRecord
    has_many :places, dependent: :destroy
end
