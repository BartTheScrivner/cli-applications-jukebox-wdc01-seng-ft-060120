songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  count = 0 
  while count < songs.length
    puts "#{count + 1}. #{songs[count]}"
    count += 1
  end
end

def play(songs)
  puts 'Please enter a song name or number:'
  reply = gets.strip
  if reply.to_i > 0 && reply.to_i < songs.length
    puts "Playing #{songs[reply.to_i - 1]}"
  elsif songs.include?(reply)
    puts "Playing #{reply}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs) 
  puts "Please enter a command:"
  reply = gets.strip
  while reply != 'exit'
    case reply
      when "help"
        help
        reply = gets.strip
      when "list"
        list
        reply = gets.strip
      when "play"
        play
        reply = gets.strip
      when "exit"
        break
    else
      puts "Invalid. Type 'help' for list of commands."
    end
  end
  exit_jukebox
end