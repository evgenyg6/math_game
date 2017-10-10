class Question
  def ask_question(player)
    num1 = rand(12)
    num2 = rand(12)
    @answer = num1 * num2
    puts "P#{player.id}: What does #{num1} * #{num2} equal?"
    @guess = gets.chomp.to_i
    if (@answer == @guess)
      puts "P#{player.id}: You are correct."
    else
      puts "P#{player.id}: You are incorrect. It is #{@answer}."
      player.lose_life(player)
    end
  end
end