=begin Create a class for a Task List.

All TaskList instances should have an owner and a due date passed in on creation. For instance, our owner could be "Tyler" and his due date would be "Sunday". The owner should not be changeable but you should be able to read it outside of the class. The due date should be readable and writeable outside of the class.
=end

class TaskList
  attr_reader :owner
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {}
  end

  def new_location(location)
    if @list[location].nil?
      @list[location] = []
    end
  end

  def add_task(location, task)
     new_location(location)
     if @list[location].include?(task)
      puts "you already have that task, '#{task}' under #{location}"
    else
       @list[location] << task
    end
  end

  def remove_task(location, task)
    if @list[location] && @list[location].include?(task)
      @list[location].delete(task)
    else
      puts "You do not have #{task}, at #{location}"
    end
  end

  def print_list()
    puts "#{owner}'s Task List!"
    puts "due on #{due_date}"
    puts
    @list.each do |location, tasks|
      if tasks.length > 0
        puts "at #{location}:"
        tasks.each do |task|
        puts "- #{task}"
        end
      end
    end
  end

  def is_past_due?(current_day)
    days_of_week = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ]
    if days_of_week.index(current_day) < days_of_week.index(due_date)
      puts "You still have time to complete your tasks"
      false
    else
      true
    end
  end

end

list = TaskList.new("sarah", "thursday" )
p list.owner
p list.due_date
list.new_location("target")
p list.add_task("target", "pick up milk")
list.add_task("target", "pick up cheese")
p list
list.add_task("peter pan", "get donuts")
list.print_list
list.remove_task("peter pan", "get donuts")
list.print_list
list.is_past_due?("Wednesday")