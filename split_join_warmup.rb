require_relative "testing_library"

goal_message = "GOOOOOOOAL!!!!"
team_list = "Brazil, Mexico, Cameroon, Croatia, Netherlands, Chile, Australia, Spain, Germany, Ghana, US, Protugal"
long_string = <<-world_cup_news
Clint, Dempsey, put, the, U.S.,
ahead, in, the, first, minute,
of, its, World, Cup, opener.
world_cup_news

# enter your solutions inside the methods
def goal(goal_message)
  goal_message*2
end

def generate_an_array_of_teams(team_list)
  team_list.split(", ").to_a
end

def number_of_teams(team_list)
  team_list.split(", ").to_a.length
end

def return_australia(team_list)
  team_list.split(", ").find {|x| x == 'Australia'}
end

def starts_with_C(team_list)
  team_list.split(", ").select {|x| x[0] == "C"}
end

def block_string_to_single_line(long_string)
  long_string.tr("\n"," ").split(", ").join(" ").strip
end

def capitalize_every_third_word(long_string)
  a = long_string.tr("\n"," ").downcase.split(", ").to_a
  a.map.with_index do |x, i|
    if i == 0 || i%3 == 0
      a[i] = x.capitalize
    else
      a[i] = x
    end
  end
  a.join(" ").strip
end

check("goal method", goal(goal_message) == "GOOOOOOOAL!!!!GOOOOOOOAL!!!!")
check("generate_an_array_of_teams method",
generate_an_array_of_teams(team_list) == ["Brazil", "Mexico", "Cameroon", "Croatia", "Netherlands", "Chile", "Australia", "Spain", "Germany", "Ghana", "US", "Protugal"] )
check("number_of_teams method", number_of_teams(team_list) == 12 )
check("return_australia method", return_australia(team_list) == 'Australia' )
check("starts_with_C method", starts_with_C(team_list) == ['Cameroon', 'Croatia', 'Chile'] )
check("block_string_to_single_line method",
block_string_to_single_line(long_string) == "Clint Dempsey put the U.S. ahead in the first minute of its World Cup opener." )
check("capitalize_every_third_word method",
capitalize_every_third_word(long_string) == "Clint dempsey put The u.s. ahead In the first Minute of its World cup opener." )
