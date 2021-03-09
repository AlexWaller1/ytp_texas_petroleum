class User < ActiveRecord::Base
    has_secure_password
    validates :username, :password_digest, presence: :true
    validates_uniqueness_of :username
    has_many :geneticists
    has_many :clones, through: :geneticists
end