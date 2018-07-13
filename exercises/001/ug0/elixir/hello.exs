IO.puts(
  "Hello, " <>
  (IO.gets("What is your name? ") |> String.trim_trailing()) <>
  ", nice to meet you!"
)
