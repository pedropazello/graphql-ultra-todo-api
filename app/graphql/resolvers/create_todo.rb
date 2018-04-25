class Resolvers::CreateTodo < GraphQL::Function
  argument :description, types.String
  argument :checked, types.Boolean

  type Types::TodoType

  def call(_obj, args, _ctx)
    Todo.create!(
      description: args[:description],
      checked: args[:checked],
    )
  end
end
