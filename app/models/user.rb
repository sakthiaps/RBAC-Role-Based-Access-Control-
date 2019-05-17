class User < ApplicationRecord
  has_many :roles, :inverse_of => :user
end
