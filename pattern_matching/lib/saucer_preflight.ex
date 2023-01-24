 
 defmodule SaucerPreflight do
    defp max_flying_load_lbs, do: 55
    defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

    # write a recursive loop that can convert kg to lb
    # if you want to access the first value in a tuple you have to use the function 
    # element elm and open parentesis 
    # elem(0)


    def get_all_items_weight([]), do: 0
    def get_all_items_weight([head|tail] )do
    (head 
    |> EquipmentDetails.item_details() # returns duple 
    |> elem(0)                         # returns the element 0 on the duple
    |> convert_kg_to_lb()
    ) + get_all_items_weight(tail)

    end




    def is_under_max_load?(list) do 
        # write loop
        # acces the index 0 of the tuple
        # convert that to lb 
        # add the wheits together to see if its less or equal to the max_flying_load 
        # return boolean if is under or not
        
        total_weight = get_all_items_weight(list) 
        # IO.puts total_weight

        if total_weight < max_flying_load_lbs, do: true, else: false

    end

end