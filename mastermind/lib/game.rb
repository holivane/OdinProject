# frozen_string_literal: true

class Game
  def initialize
    puts 'Bem-vindo ao Mastermind!'
  end

  def play_game
    menu_options = {
      1 => method(:start_game),
      2 => method(:exit_game)
    }

    puts 'Escolha uma opção:'

    choice = prompt_user_for_choice('1 - Jogar | 2 - Sair: ', menu_options.keys)
    menu_options[choice].call
  end

  private

  def choice_difficulty
    difficulty_options = {
      1 => method(:easy),
      2 => method(:medium),
      3 => method(:hard)
    }

    puts 'Escolha um nível de dificuldade:'

    difficulty_options.each_key { |key, value| puts "#{key} - #{value}" }
    prompt_user_for_choice('Escolha uma dificuldade: ', difficulty_options.keys)
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

  def start_game(difficulty)
    easy if difficulty == 1
    medium if difficulty == 2
    hard if difficulty == 3
  end

  def exit_game
    puts 'Até mais!'
  end

  def easy
    puts 'Fácil'
  end

  def medium
    puts 'Médio'
  end

  def hard
    puts 'Difícil'
  end
end
