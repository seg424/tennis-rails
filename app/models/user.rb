class User < ApplicationRecord
  belongs_to :league
  enum status: %w(ACTIVE INACTIVE SUBSTITUTE)
end
