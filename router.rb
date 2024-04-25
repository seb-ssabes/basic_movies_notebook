class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Hi! Welcome to your Moviebook"
    puts "           -----             "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end


  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.remove
    when 4 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What would you like to do?"
    puts "1 - List all Movies"
    puts "2 - Add a new Movie"
    puts "3 - Remove a Movie"
    puts "4 - Stop and exit the program"
  end
end
