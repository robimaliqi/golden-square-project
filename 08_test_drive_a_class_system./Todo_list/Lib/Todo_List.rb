class TodoList
  def initialize
    @tasks = []
  end

  def add(todo)
    @tasks << todo
  end

  def incomplete
    return @tasks.reject do |task|
      task.done?
    end
  end

  def complete
    return @tasks.select do |task|
      task.mark_done!
    end
  end

  def give_up!
    return @tasks.each do |task|
      task.mark_done!
    end
  end
end