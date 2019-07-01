module Types
  class QueryType < Types::BaseObject
    field :users, Types::Connections::UserConnection, connection: true, null: true

    def users
      ::User.all
    end
  end
end
