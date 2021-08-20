# exemplo de módulo
defmodule Multiplicador do
  def multiplique(a, b \\ 2), do: a * b
  defp soma(a, b), do: a + b
end

# Módulo aninhado
defmodule Multiplicador do
  defmodule Multiplique do
    def por_dois(numero) do
      numero * 2
    end
  end
end

# Módulo aninhado com ponto
defmodule Multiplicador.Multiplique do
  def por_dois(numero), do: numero * 2
end

# Função anônima
# multiplicador = fn a, b -> a * b end

# Função anônima com operador &
# multiplica_e_soma = &(&1 * &2 + &3)
