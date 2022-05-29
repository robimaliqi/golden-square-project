class Todo
  def initialize(task)
    @task = task
    @complete = false
  end

  def task
    return @task
  end

  def mark_done!
    @complete = true
  end

  def done?
    return @complete
  end
end