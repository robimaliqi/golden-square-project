require "todo_list"

RSpec.describe "todo_list method" do
  it "returns an empty list if no task is entered" do
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end
  it "adds a task in the array" do
    todo_list = TodoList.new
    todo_list.add("clean the house")
    expect(todo_list.list).to eq ["clean the house"]
  end
  it "adds anoter task in the array and shows two tasks" do
    todo_list = TodoList.new
    todo_list.add("clean the house")
    todo_list.add("wash the dog")
    expect(todo_list.list).to eq ["clean the house", "wash the dog"]
  end
  it "when you complete a task it removes it from the list and only shows the uncomplete tasks" do
    todo_list = TodoList.new
    todo_list.add("clean the house")
    todo_list.add("wash the dog")
    todo_list.complete("wash the dog")
    expect(todo_list.list).to eq ["clean the house"]
  end
  it "returns fail when we try to complete a task that doesn't exist" do
    todo_list = TodoList.new
    todo_list.add("clean the house")
    expect{ todo_list.complete("wash the sheep") }.to raise_error "No such task"
  end
end