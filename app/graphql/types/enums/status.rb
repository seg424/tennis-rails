# frozen_string_literal: true

module Types
  module Enums
    class Status < BaseEnum
      description "Allowed values for a player's status"

      STATUSES = %w(ACTIVE INACTIVE SUBSTITUTE)

      STATUSES.each do |status|
        value(status, value: status)
      end
    end
  end
end
