require 'colorize'
require_relative 'git'

puts String.colors

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:green)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: View git config'.colorize(:cyan)
    puts '3: Exit'.colorize(:red)
    choice = gets.to_i

    case choice
    when 1
      puts 'Enter a git command'.colorize(:yellow)
      Git.puts_git(gets.strip)
      menu
    when 2
      Git.config
    when 3
      exit
    else
      puts 'Invalid choice.'.colorize(:red)
      menu
    end
  end
end

Main.menu