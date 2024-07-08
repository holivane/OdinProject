# frozen_string_literal: true

# Classe que representa o computador
class Computer
  def initialize
    @code = []
    4.times { @code << rand(1..6) }
  end

  def guess
    guess = []
    4.times { guess << rand(1..6) }
    guess
  end
end
