defmodule AccountBank do
  def getAccountType(accountType) do
    whatAccountType = fn
        :corrente -> :corrente
        :poupanca -> :poupanca
        _ -> :receptador
      end
    whatAccountType.(accountType)
  end
  defmodule AccountBalance do
    def getTotalBalance(correnteBalance, poupancaBalance \\ 0), do: correnteBalance + poupancaBalance
  end
end
