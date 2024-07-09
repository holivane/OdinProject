# frozen_string_literal: true

# Classe responsável por definir um usuário
class User
  attr_accessor :name, :score, :difficulty

  def initialize(name)
    @name = name
    @difficulty = nil
    @score = 0
  end
end
