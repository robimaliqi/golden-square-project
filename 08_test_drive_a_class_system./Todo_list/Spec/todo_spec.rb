require "todo"

RSpec.describe Todo do 
  it "returns the task" do
    task_1 = Todo.new("wash clothes")
    expect(task_1.task).to eq "wash clothes"
  end
  it "returns true if the task is complete" do 
    task_2 = Todo.new("do the shopping")
    expect(task_2.mark_done!).to eq true
  end
  it "returns false if the task is incomplete" do 
    task_1 = Todo.new("wash clothes")
    expect(task_1.done?).to eq false
  end
end 