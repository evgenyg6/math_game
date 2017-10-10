class Question
  def ask_question(player)
    num1 = rand(10)
    num2 = rand(10)
    @answer = num1 * num2
    puts "P#{player.id}: What does #{num1} * #{num2} equal?"
    @guess = gets.chomp.to_i
    if (@answer == @guess)
      puts "P#{player.id}: You are correct."
    else
      puts "P#{player.id}: You are incorrect."
      player.lose_life(player)
    end
  end
end