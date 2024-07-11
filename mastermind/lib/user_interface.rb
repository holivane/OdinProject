# frozen_string_literal: true

# Classe responsável por interagir com o usuário
class UserInterface
  COLORS = %w[vermelho verde azul amarelo preto branco].freeze

  def self.prompt_user_for_name
    puts 'Qual é o seu nome?'
    gets.chomp
  end

  def self.display_welcome_message(name)
    puts "Vamos jogar Mastermind, #{name}!"
    display_instructions
  end

  def self.display_instructions
    puts 'Instruções: O objetivo do jogo é adivinhar a sequência de 4 cores gerada pelo computador.'
    puts "           As opções de cores são: #{COLORS.join(', ')}."
    puts '           Após cada tentativa, o computador informará:'
    puts '           - Quantas cores estão corretas e em suas posições corretas (corretas)'
    puts '           - Quantas cores estão corretas, mas em posições erradas (quase corretas).'
    puts 'Boa sorte!'
    puts
  end

  def self.dispaly_menu(message, menu_options)
    puts message
    menu_options.each { |key, value| puts "#{key} - #{value[:description]}" }
  end

  def self.prompt_user_for_choice(valid_choices)
    choice = nil

    until valid_choices.include?(choice)
      choice = gets.chomp.to_i
      puts 'Opção inválida! Tente novamente :D ' unless valid_choices.include?(choice)
    end

    choice
  end

  def self.display_goodbye_message
    puts 'Obrigado por jogar Mastermind!'
  end

  def self.dispaly_exit_message(name)
    clear_screen
    puts "Até mais, #{name}!"
  end

  def self.clear_screen
    system('clear') || system('cls')
  end

  def self.level_message(choice)
    clear_screen
    level = { 1 => 'Fácil', 2 => 'Médio', 3 => 'Difícil' }
    puts "Você escolheu o nível #{level[choice]}! Boa sorte!"
  end

  def self.game_message(max_attempts, code_length)
    puts "Você tem #{max_attempts} tentativas para adivinhar a sequência de #{code_length} cores."
  end

  def self.attempt_message(attempt, max_attempts)
    puts "Tentativa #{attempt} de #{max_attempts}"
  end

  def self.display_choice_sequence_message(code_length)
    puts "Digite uma sequência de #{code_length} cores separadas por espaço:"
    puts "Cores possíveis: #{COLORS.join(', ')}"
  end

  def self.display_feedback_message(correct, almost_correct)
    puts "Cores corretas no lugar correto: #{correct}"
    puts "Cores corretas no lugar errado: #{almost_correct}"
  end
end
