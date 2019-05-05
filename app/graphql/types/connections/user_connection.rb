# frozen_string_literal: true

module Types
  module Connections
    class UserConnection < BaseConnection
      edge_type(Types::Edges::UserEdge)

      field :totalCount, Int, null: false

      def total_count
        object.nodes.length
      end
    end
  end
end