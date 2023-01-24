
defmodule Anonymous do
  def get_equipment_list() do
    [:space_helmet, :space_suit , :snacks , :grapling_hook , :probe]
  end

  def item_details(:space_helmet) do
    # WEIGHT, UNIT OF MASS , AMOUNT
      {3,:kg,1}
  end

  def item_details(:space_suit) do
      {16,:kg,1 }
  end

  def item_details(:snacks) do
      {1,:kg, 16 }
  end

  def item_details(:grapling_hook) do
      {4,:kg, 1 }
  end

  def item_details(:probe) do
      {2,:lb, 3 }
  end

  def item_details(_other) do
      # {2,:kg, 3 }
      raise "unknown item"
  end

  def get_first_item(list) do
    first = fn [head|_tail] -> head end
    first.(list)
  end

  def atom_to_string(list) do
    convert = fn x ->
      to_string(x)
      |> String.upcase()
      |> String.replace("_", " ")
     end

     Enum.map(list, convert)
    end

  def get_weight_lbs(list) do
    get_lbs = fn item ->
      {weight, type, _quantity} = item_details(item)
      case type do
        :kg -> weight * 2.2
          _ -> weight
      end
    end

      Enum.map(list, get_lbs) # list to be mapped / function to be run for each item of the list
  end
end
