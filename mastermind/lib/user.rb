# frozen_string_literal: true

# Classe responsável por definir um usuário
class User
  attr_accessor :name, :score

  def initialize(name)
    @name = name
  end
end
