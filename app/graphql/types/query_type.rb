module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items, 
    [Types::ItemType],
    null: false, 
    description: "Return a list of items"

    def items
      Item.all
    end 
  end
end