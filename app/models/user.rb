class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    has_many :albums, dependent: :destroy 
    has_one_attached :image
end