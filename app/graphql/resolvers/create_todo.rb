class Resolvers::CreateTodo < GraphQL::Function
  argument :description, types.String
  argument :checked, types.Boolean

  type Types::TodoType

  def call(_obj, args, _ctx)
    Todo.create!(
      description: args[:description],
      checked: args[:checked],
    )

  rescue ActiveRecord::RecordInvalid => e
    GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
  end
end
