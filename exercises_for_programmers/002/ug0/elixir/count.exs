defmodule CharsCounter do
  def output_count("") do
    IO.gets("What is the input string?")
    |> String.trim_trailing()
    |> output_count()
  end

  def output_count(str) do
    IO.puts("#{str} has #{String.length(str)} characters.")
  end
end

CharsCounter.output_count("")
