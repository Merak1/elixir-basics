defmodule Guards do

  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  def is_single_digit(value) when is_integer(value) and value < 10, do: :is_single_digit
  # def is_single_digit(value) when  is_integer(value) and value >= 10, do: :is_multi_digit
  def is_single_digit(value) when  not is_integer(value) or value > 9, do: :is_multi_digit

  defguard is_even(value) when is_integer(value) and rem(value, 2) == 0

  # def is_number_even?(number), do:  if is_even(number),  do: true, else: false
  def return_even_numbers(value \\ :empty)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(value) when not is_even(value), do: :value_is_not_even

  # def get_equipment(), do: EquipmentDetails.get_equipment_list()
  def get_equipment_list do
    [:space_helmet, :space_suit , :snacks , :grapling_hook , :probe]
  end


  def is_under_max_load?(load, max_load \\ 55)
  def is_under_max_load?(load, max_load) when is_number(load) and load <= max_load, do: true
  def is_under_max_load?(load, max_load) when not is_number(load) or load > max_load, do: false


end
