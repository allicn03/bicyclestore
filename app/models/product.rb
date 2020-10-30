class Product < ApplicationRecord
    def self.search (search_term)
        if Rails.env.production?
            Product.where("name ilike ? OR description ilike ?", "%#{search_term}%", "%#{search_term}%")
        else
            Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
        end
    end
end
