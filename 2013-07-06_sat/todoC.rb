require 'csv'

class List
  attr_reader :tasks

  def initialize (filename)
    @filename = filename
    @tasks     = @tasks || []
    load
  end

  def load
    filetext = CSV.read("#{@filename}.csv")
    filetext.each do |array|
        @tasks << Task.new(array[0])
    end
  end

  def add(task_text)
    @tasks << Task.new(task_text)
  end

  def comptele_task(task_id)
    @tasks[task_id].completed
  end

  def delete(task_id)
    @tasks.delete_at(task_id)
  end

  def display
    @task.each_with_indes do |task, index|
        puts "#{index}. #{task}"
  end

  def save
    CSV.open("#{@filename}.csv", "w+") do |row|
      @tasks.each do |task|
        row << task
      end
    end
  end
end


class Task
  attr_reader :text

  def intialize(task_text)
    @text = task_text
    @completed = false
  end

  def completed
    @completed = true
  end

  def to_s
    if @completed
      "[X] #{text}"
    else
      "[ ] #{text}"
    end
  end
end

class UserInput

  def initialize(filename = 'todo')
    @list = List.new('todo')
    @list.load
  end

  def run
    if    ARGV[0] ==  'list'
      @list.display
    elsif ARGV[0] ==  'add'
      @list.add(ARGV[1..-1].join(' '))
      puts "Add #{ARGV[1..-1].join(' ')} to the TODO list"
    elsif ARGV[0] ==  'delete'
      task_text = @list.delete(ARGV[1].to_i)
      puts "Delete #{task_text} from the TODO list"
    else ARGV[0] ==  'complete'
      @list.complete_task(ARGV[1].to_i)
    end
    @list.save
  end
end

new_todo = UserInput.new

new_todo.run
