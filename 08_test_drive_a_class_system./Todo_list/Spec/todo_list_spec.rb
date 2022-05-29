require "Todo_list"

RSpec.describe TodoList do
  it "has an empty list of tasks" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end
  it "has an empty list of complete tasks" do
    todo_list = TodoList.new
    expect(todo_list.complete).to eq []
  end
end