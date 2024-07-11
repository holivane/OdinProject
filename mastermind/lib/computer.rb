# frozen_string_literal: true

# Classe que representa o computador
class Computer
  attr_reader :code_length

  def initialize(code_length)
    @code = generate_code(code_length)
  end

  def generate_code(length)
    Array.new(length) { UserInterface::COLORS.sample }
  end
end
