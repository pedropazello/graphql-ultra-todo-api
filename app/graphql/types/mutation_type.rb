Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createTodo, function: Resolvers::CreateTodo.new
end
