defmodule Contador do
  def contar([]), do: 0
  def contar([_ | tail]), do: 1 + contar(tail)
end
