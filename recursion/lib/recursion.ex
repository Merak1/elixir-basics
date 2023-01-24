defmodule Recursion do

  def get_equimpent_list do   
  ["Space Helment", "Snacks", "Space Suit", "Hook"] 
  end 
  
  
  def loop([]),  do: nil # base case 
  def loop([head | tail]) do  # recursive case 
    IO.puts(head)
    loop(tail)
  end 

  def equimpent_count([]), do: 0 
  def equimpent_count([_head | tail]), do: 1 + equimpent_count(tail)

  def format_equiment_list([]), do: []
  def format_equiment_list(single_string), do: String.downcase(single_string) 
  def format_equiment_list([head | tail]) do 
   [ head |> String.downcase() |> String.replace(" ", "_")| format_equiment_list(tail)]
  end

  def occurence_count([], _value), do: 0
  def occurence_count([value | tail], value), do: 1 + occurence_count(tail, value)
  # arriba se hace la comparación, cada que value en el array sea el mismo que value se añade y se itera
  def occurence_count([_head | tail], value), do: occurence_count(tail,value)

  #! write a function that returns a value if the input is contained in the list partially 

  def string_is_contained(string, content) do 
    String.contains?(string, content)
  end

  def partial_ocurrence([], _value ), do: nil
  def partial_ocurrence([head|tail],value) do 
    if String.contains?( head, value) do 
      IO.puts " #{value} exist whitin #{head}"  
    else 
      partial_ocurrence(tail, value) 
    end

    # String.contains?( head, value)  |> partial_ocurrence(tail)
  end
  # def partial_ocurrence([ string_is_contained(value) |tail],value), do: "sekai"

end