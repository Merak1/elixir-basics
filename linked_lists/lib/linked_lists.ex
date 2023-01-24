defmodule LinkedLists do
  def get_equiment() do
    ["Space Helment", "Space Suit", "Snacks", "Grappling Hook", "Probe"]
  end

  def get_first_item(list) do
    hd(list)
  end
  def remove_first_item(list) do
    tl(list)
  end
  def add_slow(list, value) do
    list ++ [value]
  end
  def add_fast(list,value) do
    # pipeLess behavior 
    # list_reversed = Enum.reverse(list)
    # new_list = [value | list_reversed]
    # Enum.reverse(new_list) 

    # pipefull

    [value | reverse_list(list)] |> reverse_list() 
  end
  defp reverse_list(list) do
    Enum.reverse(list)
  end

  def remove_item(list,index) do
    List.delete_at(list,index)
  end

  def equipment_count(list) do
    length(list)
  end
  def check_for_item(list,item) do
    item in list
  end
end
