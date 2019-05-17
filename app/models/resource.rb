class Resource < ApplicationRecord
  has_many :roles, :inverse_of => :resource
end
