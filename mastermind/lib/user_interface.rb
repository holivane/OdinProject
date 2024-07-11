# frozen_string_literal: true

# Classe responsável por interagir com o usuário
class UserInterface
  COLORS = %w[red green blue yellow purple orange].freeze

  def self.prompt_user_for_name
    puts 'Qual é o seu nome?'
    gets.chomp
  end

  def self.display_welcome_message(name)
    puts "Vamos jogar Mastermind, #{name}!"
  end

  def self.display_instructions
    puts
    puts 'Instruções:'
    puts 'O objetivo do jogo é adivinhar a sequência de 4 cores gerada pelo computador.'
    puts 'Cada cor é representada por um número de 1 a 6.'
    puts 'Após cada tentativa, o computador informará:'
    puts '- Quantas cores estão corretas e em suas posições corretas (corretas)'
    puts '- Quantas cores estão corretas, mas em posições erradas (quase corretas).'
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
end
