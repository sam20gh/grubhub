class Customer < ApplicationRecord
    has_many :orders
    has_many :restaurants, through: :orders
    validates :name, presence: true
    validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :password, :confirmation => true
    validates_length_of :password, :in => 6..20, :on => :create
    validates :dob, presence: true
    validates :bio, presence: true
end
