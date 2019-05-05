# frozen_string_literal: true

module Types
  module Edges
    class UserEdge < BaseEdge
      node_type(Types::User)
    end
  end
end
