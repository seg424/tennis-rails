class User < ApplicationRecord
  enum status: [:active, :inactive, :substitute]
end
