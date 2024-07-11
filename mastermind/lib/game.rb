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
    UserInterface.clear_screen
    UserInterface.display_welcome_message(@user.name)
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
    max_attempts = { 1 => 3, 2 => 3, 3 => 3 } #{ 1 => 12, 2 => 10, 3 => 8 }
    code_length = { 1 => 2, 2 => 2, 3 => 2 } #{ 1 => 4, 2 => 6, 3 => 8 }
    UserInterface.game_message(max_attempts[choice], code_length[choice])

    @computer = Computer.new(code_length[choice])
    game_loop(max_attempts[choice], code_length[choice])
  end

  def exit_game
    UserInterface.dispaly_exit_message(@user.name)
  end

  def game_loop(max_attempts, code_length)
    max_attempts.times do |attempt|
      UserInterface.attempt_message(attempt + 1, max_attempts)
      UserInterface.display_choice_sequence_message(code_length)
      attempt_sequence = choice_sequence
      puts attempt_sequence
      puts @computer.code
      result = @computer.compare_sequences(attempt_sequence)
      UserInterface.display_feedback_message(result[:correct], result[:almost_correct])
    end
    display_game_over_message
  end

  def choice_sequence
    gets.chomp.split
  end

  def display_game_over_message
    UserInterface.display_goodbye_message
  end
end
