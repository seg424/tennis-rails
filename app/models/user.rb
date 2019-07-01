class User < ApplicationRecord
  enum status: %w(ACTIVE INACTIVE SUBSTITUTE)
end
