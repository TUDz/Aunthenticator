# == Schema Information
#
# Table name: todos
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "title should not be empty" do
    todo = Todo.new
    todo.title = "Este título es válido"
    todo.save
    assert todo.persisted?, "Todo record was not saved in db"
  end
end
 
