class User < ApplicationRecord
    validates :name, :age, :address, :email, presence: true
    validates :address, length: { minimum: 10 }
end
