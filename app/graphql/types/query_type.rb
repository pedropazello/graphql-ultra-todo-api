Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allTodos, !types[Types::TodoType] do
    resolve -> (obj, args, ctx) { Todo.all }
  end
end
