require 'colorize'

puts String.colors

def puts_git(cmd)
  puts `git #{cmd} -h`

end

def menu
  puts 'MAIN MENU'.colorize(:green)
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:red)
  choice = gets.to_i

  case choice
  when 1
    puts 'Enter a git command'.colorize(:yellow)
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice.'.colorize(:red)
    menu
  end
end

menu