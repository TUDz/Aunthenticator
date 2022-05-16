require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "title should not be empty" do
    todo = Todo.new
    todo.title = "Este título es válido"
    todo.save
    assert todo.persisted?, "Todo record was not saved in db"
  end
end
 