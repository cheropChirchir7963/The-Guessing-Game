defmodule GuessingGame do

  def guess(low, high) do
    IO.puts "The answer has to be #{mid(low, high)} \n"
  end

  def mid(low, high) do
    div(low + high , 2)
  end

  def bigger(low, high) do
    new_low = min(high, mid(low,high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low,high) - 1)
    guess(low, new_high)
  end

end
