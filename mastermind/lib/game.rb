# frozen_string_literal: true

class Game
  def initialize
    puts 'Bem-vindo ao Mastermind!'
  end

  def play_game
    choice = choice_play

    case choice
    when 1
      difficulty = choice_difficulty
      start_game(difficulty)
    when 2
      puts 'Até mais!'
    end
  end

  private

  def choice_play
    puts '1 - Jogar'
    puts '2 - Sair'
    prompt_user_for_choice('Escolha uma opção: ', [1, 2])
  end

  def choice_difficulty
    puts '1 - Fácil'
    puts '2 - Médio'
    puts '3 - Difícil'
    prompt_user_for_choice('Escolha uma dificuldade: ', [1, 2, 3])
  end

  def prompt_user_for_choice(message, valid_choices)
    choice = nil

    until valid_choices.include?(choice)
      print message
      choice = gets.chomp.to_i
      puts 'Opção inválida! Tente novamente.' unless valid_choices.include?(choice)
    end

    choice
  end
end
