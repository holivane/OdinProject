# frozen_string_literal: true

# Classe que representa o computador
class Computer
  attr_reader :code_length, :code

  def initialize(code_length)
    @code = generate_code(code_length)
  end

  def generate_code(length)
    Array.new(length) { UserInterface::COLORS.sample }
  end

  def compare_sequences(player_sequence)
    correct_colors = 0
    almost_correct_colors = 0

    player_sequence.each_with_index do |color, index|
      if @code[index] == color
        correct_colors += 1
      elsif @code.include?(color)
        almost_correct_colors += 1
      end
    end

    { correct: correct_colors, almost_correct: almost_correct_colors}
  end
end
