# frozen_string_literal: true

puts 'Vamos jogar Mastermind?'
puts '1 - Jogar'
puts '0 - Sair'

choice = gets.to_i

loop do
  break if [1, 0].include?(choice)

  puts 'Opção inválida!'
  choice = gets.to_i
end

if choice == 1
  puts 'Vamos jogar!'
  puts 'Escolha um nível de dificuldade:'
  puts '1 - Fácil'
  puts '2 - Médio'
  puts '3 - Difícil'

  gets.to_i

elsif choice.zero?
  puts 'Até mais!'
else
  puts 'Opção inválida!'
end
