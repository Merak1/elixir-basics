defmodule ControlFlow do
  def check_max_load(load) do
    # if load < 55, do: "safe to fly", else: "too heavy to fly"
    unless load < 55, do: "too heavy", else: "safe to fly"

  end

  def check_fuel_level(percentage) do
    cond do
      percentage > 100 -> "Cant have more than a 100 "
      percentage == 100 -> "full tank"
      percentage > 75 -> "3/4 of tank"
      percentage > 49 -> "half of tank"
      percentage > 24 -> "half of tank"
      percentage > 5 -> "Almost empty"
      true -> "Please refuel, empty tank"
    end
  end

  def error_code_check(value) do
    case value do
       200 -> :ok
       201 -> :created
       204 -> :no_content
       n when is_integer(n) and n > 299 -> :error
        _ -> :unknown
    end
  end

  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

  # check no individual item wheights more than 16kg

  def equipment_type_check(weight, unit_type, quantity) when is_number(weight) and is_atom(unit_type) and is_integer(quantity), do: true

  def equipment_check(equipment_duple) do
    # typechecks
    # weights always number
    # unit_type always an atom
    # quantity alwais integer
    case equipment_duple do
      {weight, unit_type, quantity} when  is_number(weight) and is_atom(unit_type) and is_integer(quantity) and  weight / quantity < 16 and unit_type == :kg -> :equipment_clear
      {weight, unit_type, quantity} when  is_number(weight) and is_atom(unit_type) and is_integer(quantity) and  unit_type == :lb ->
        if convert_kg_to_lb(weight) / quantity < 16, do: :equipment_cleared, else: :failed
      _ -> :error
    end
  end



end
