defmodule Bob do
  def hey(input) do
    trim_input = String.trim(input)
    upcase_input = String.upcase(input)
    downcase_input = String.downcase(input)

    cond do
      String.length(trim_input) == 0 ->
        "Fine. Be that way!"

      upcase_input != downcase_input &&
        upcase_input == trim_input &&
          String.ends_with?(trim_input, "?") ->
        "Calm down, I know what I'm doing!"

      upcase_input != downcase_input &&
          upcase_input == trim_input ->
        "Whoa, chill out!"

      String.ends_with?(trim_input, "?") ->
        "Sure."

      true ->
        "Whatever."
    end
  end
end
