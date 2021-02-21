defmodule AccountBank do
  def getAccountType(accountType) do
    whatAccountType = fn
        :corrente -> :corrente
        :poupanca -> :poupanca
        _ -> :receptador
      end
    whatAccountType.(accountType)
  end

  def getTotalBalance(correnteBalance, popancaBalance \\ 0) do
    correnteBalance + popancaBalance
  end
end
