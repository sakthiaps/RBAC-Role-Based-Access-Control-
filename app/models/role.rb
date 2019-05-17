class Role < ApplicationRecord
  belongs_to :user, :inverse_of => :roles
  belongs_to :resource, :inverse_of => :roles
end
