# frozen_string_literal: true
require_relative 'user'
require_relative 'user_interface'

# Classe responsável por controlar o fluxo do jogo
# e interagir com o usuário
class Game
  def initialize
    @ui = UserInterface.new
    @user = User.new(@ui.prompt_user_for_name)
  end

  def play_game
    @ui.display_instructions
    menu_options = {
      1 => method(:start_game),
      2 => method(:exit_game)
    }

    puts "#{@user.name}, escolha uma opção:"
    choice = UserInterface.prompt_user_for_choice('1 - Jogar | 2 - Sair: ', menu_options.keys)
    menu_options[choice].call
  end

  private

  def start_game
    difficulty_options = {
      1 => ['Fácil', method(:easy)],
      2 => ['Médio', method(:medium)],
      3 => ['Difícil', method(:hard)],
      4 => ['<-- Voltar', method(:play_game)]
    }

    puts 'Escolha um nível de dificuldade:'
    difficulty_options.each { |key, (level, _)| puts "#{key} - #{level}" }

    choice = UserInterface.prompt_user_for_choice('Escolha uma dificuldade: ', difficulty_options.keys)
    difficulty_options[choice][1].call
  end

  def exit_game
    @ui.dispaly_exit_message(@user.name)
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
