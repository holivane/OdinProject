# frozen_string_literal: true

require_relative 'user'
require_relative 'user_interface'
require_relative 'computer'

# Classe responsável por controlar o fluxo do jogo
# e interagir com o usuário
class Game
  def initialize
    @user = User.new(UserInterface.prompt_user_for_name)
  end

  def play_game
    UserInterface.display_welcome_message(@user.name)
    UserInterface.display_instructions
    main_menu
  end

  private

  def main_menu
    menu_options = {
      1 => { description: 'Jogar', action: method(:choice_difficulty) },
      2 => { description: 'Sair', action: method(:exit_game) }
    }

    @ui.dispaly_menu('Escolha uma opção', menu_options)
    choice = @ui.prompt_user_for_choice(menu_options.keys)

    menu_options[choice][:action].call
  end

  def choice_difficulty
    @ui.clear_screen

    menu_options = {
      1 => { description: 'Fácil' },
      2 => { description: 'Médio' },
      3 => { description: 'Difícil' }
    }

    @ui.dispaly_menu('Escolha um nível de dificuldade', menu_options)
    choice = @ui.prompt_user_for_choice(menu_options.keys)

    start_game(choice)
  end

  def start_game(choice)
    case choice
    when 1
      easy
    when 2
      medium
    when 3
      hard
    end
  end

  def exit_game
    @ui.dispaly_exit_message(@user.name)
  end

  def easy
    @ui.clear_screen
    @ui.level_message('Fácil')
    game_loop(8)
  end

  def medium
    @ui.clear_screen
    @ui.level_message('Médio')
  end

  def hard
    @ui.clear_screen
    @ui.level_message('Difícil')
  end

  def game_loop(max_attempts)
    max_attempts.times do |attempt|
      puts "Tentativa #{attempt + 1}"
    end
  end
end
