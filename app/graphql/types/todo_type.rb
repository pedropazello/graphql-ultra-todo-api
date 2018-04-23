Types::TodoType = GraphQL::ObjectType.define do
  name "Todo"

  field :id, !types.ID
  field :description, !types.String
  field :checked, !types.Boolean
end
