defmodule ReplaceVariables do
  def call(text) do
    text
    |> String.replace("Текст который нужно заменить", "Заменяемый текст")
  end
end

text = """
Какой то текст для поиска и замены слов
"""

text |> ReplaceVariables.call() |> IO.puts()
