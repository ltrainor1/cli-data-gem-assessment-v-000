class CLI
  def call
      puts "What kind of car are you looking for?"
      input = gets.strip
      Cars.search(input)
      status = true
      while status == true
        puts "Would you like to search again?"
        input = gets.strip
      if input.downcase == 'yes'
        puts "What kind of car are you looking for?"
        input = gets.strip
        Cars.search(input)
    else
      status = false
      puts "Goodbye"
    end
  end
  end

end
