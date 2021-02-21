defmodule AccountBank do
  def getAccountType(accountType) do
    whatAccountType = fn
        :corrente -> :corrente
        :poupanca -> :poupanca
        _ -> :receptador
      end
    whatAccountType.(accountType)
  end

  def getTotalBalance(correnteBalance, poupancaBalance \\ 0), do: correnteBalance + poupancaBalance
end
