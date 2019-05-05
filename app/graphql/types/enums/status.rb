# frozen_string_literal: true

module Types
  module Enums
    class Status < BaseEnum
      description "Allowed values for a player's status"

      value "Active", value: 0
      value "Inactive", value: 1
      value "Substitute", value: 2
    end
  end
end
