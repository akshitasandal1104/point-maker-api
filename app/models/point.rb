class Point < ApplicationRecord
    validates :title, uniqueness: true
end