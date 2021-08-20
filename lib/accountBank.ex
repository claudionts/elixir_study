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
    def getTotalBalance(correnteBalance, poupancaBalance \\ 0),
      do: correnteBalance + poupancaBalance

    # Param list of credits for sum
    # Passar a lista de creditos para a soma
    def getCreditAvailable(balances) do
      if is_list(balances) do
        Enum.filter(balances, &(&1 > 0))
        |> Enum.sum()
      end
    end
  end
end
