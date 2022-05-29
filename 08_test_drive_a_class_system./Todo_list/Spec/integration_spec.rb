require "todo"
require "todo_list"

RSpec.describe "integration" do
  it "adds and lists the incomplete tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("wash clothes")
    task_2 = Todo.new("do the shopping")
    todo_list.add(task_1)
    todo_list.add(task_2)
    expect(todo_list.incomplete).to eq [task_1, task_2]
  end
  it "mark_done! moves incomplete tasks to complete tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("wash clothes")
    task_2 = Todo.new("do the shopping")
    todo_list.add(task_1)
    todo_list.add(task_2)
    task_2.mark_done!
    expect(todo_list.incomplete).to eq [task_1]
  end
  it "done? checks wether the task is in the array and returns true or false" do
    todo_list = TodoList.new
    task_1 = Todo.new("wash clothes")
    task_2 = Todo.new("do the shopping")
    todo_list.add(task_1)
    todo_list.add(task_2)
    task_1.mark_done!
    expect(task_1.done?).to eq true
  end
  it "give_up! moves all the incomplete tasks to to complete" do
    todo_list = TodoList.new
    task_1 = Todo.new("wash clothes")
    task_2 = Todo.new("do the shopping")
    todo_list.add(task_1)
    todo_list.add(task_2)
    todo_list.give_up!
    expect(todo_list.incomplete).to eq []
    expect(todo_list.complete).to eq [task_1, task_2]
  end
end