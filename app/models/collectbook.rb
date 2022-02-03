class Collectbook < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :time, presence: true
    
end
