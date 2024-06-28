# frozen_string_literal: true

# Classe responsável por controlar o fluxo do jogo
# e interagir com o usuário
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

  def start_game
    difficulty_options = {
      1 => ['Fácil', method(:easy)],
      2 => ['Médio', method(:medium)],
      3 => ['Difícil', method(:hard)]
    }

    puts 'Escolha um nível de dificuldade:'
    difficulty_options.each { |key, (level, _)| puts "#{key} - #{level}" }

    choice = prompt_user_for_choice('Escolha uma dificuldade: ', difficulty_options.keys)
    difficulty_options[choice][1].call
  end

  def prompt_user_for_choice(message, valid_choices)
    choice = nil

    until valid_choices.include?(choice)
      print message
      choice = gets.chomp.to_i
      puts 'Opção inválida! Tente novamente :D ' unless valid_choices.include?(choice)
    end

    choice
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
