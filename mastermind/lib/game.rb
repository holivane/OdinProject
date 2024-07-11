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

    UserInterface.dispaly_menu('Escolha uma opção', menu_options)
    choice = UserInterface.prompt_user_for_choice(menu_options.keys)

    menu_options[choice][:action].call
  end

  def choice_difficulty
    UserInterface.clear_screen

    menu_options = {
      1 => { description: 'Fácil' },
      2 => { description: 'Médio' },
      3 => { description: 'Difícil' }
    }

    UserInterface.dispaly_menu('Escolha um nível de dificuldade', menu_options)
    choice = UserInterface.prompt_user_for_choice(menu_options.keys)

    start_game(choice)
  end

  def start_game(choice)
    UserInterface.level_message(choice)
    max_attempts = { 1 => 12, 2 => 10, 3 => 8 }
    code_length = { 1 => 4, 2 => 6, 3 => 8 }

    @computer = Computer.new(code_length[choice])



  end

  def exit_game
    UserInterface.dispaly_exit_message(@user.name)
  end

  def game_loop(max_attempts)
    max_attempts.times do |attempt|
      puts "Tentativa #{attempt + 1}"
    end
  end
end
