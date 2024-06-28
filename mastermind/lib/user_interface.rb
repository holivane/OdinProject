# frozen_string_literal: true

# Classe responsável por interagir com o usuário
class UserInterface
  def display_welcome_message
    puts 'Bem-vindo ao Mastermind!'
  end

  def display_goodbye_message
    puts 'Obrigado por jogar Mastermind!'
  end

  def dispaly_exit_message
    puts 'Até mais!'
  end

  def display_instructions
    puts 'Instruções:'
    puts 'O objetivo do jogo é adivinhar a sequência de 4 cores gerada pelo computador.'
    puts 'Cada cor é representada por um número de 1 a 6.'
    puts 'Após cada tentativa, o computador informará:'
    puts '- Quantas cores estão corretas e em suas posições corretas (corretas)'
    puts '- Quantas cores estão corretas, mas em posições erradas (quase corretas).'
    puts 'Boa sorte!'
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
end
