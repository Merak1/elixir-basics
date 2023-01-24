defmodule AllStrings do

    # def trim_String(value) do
    #   String.trim(value )
    # end
  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{first_letter(value) |> String.capitalize()}" # the complete return of the function wraped on interpolation returns a formatted string
  end

  def initials(full_name) do 
    list = String.split(full_name)
    Enum.map(list, fn name -> initial(name )end )
    |> List.to_string() |> String.trim()
  end 

  def display_saucer() do 
    IO.puts(build_saucer())
  end 

  defp build_saucer() do 
    """
        _      _      _      _      _      _      _
        _( )__ _( )__ _( )__ _( )__ _( )__ _( )__ _( )__
      _|     _|     _|     _|     _|     _|     _|     _|
    (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_
      |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
      |_     |_     |_     |_     |_     |_     |_     |_
      _) _   _) _   _) _   _) _   _) _   _) _   _) _   _)
      |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
      _|     _|     _|     _|     _|     _|     _|     _|
    (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_
      |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
      |_     |_     |_     |_     |_     |_     |_     |_
      _) _   _) _   _) _   _) _   _) _   _) _   _) _mx _)
      |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
    """ 
  end

  def display_customized_spacecraft(full_name) do 
    IO.puts(customize_spacecraft(full_name))
  end 
  defp customize_spacecraft(full_name) do

    initials = initials(full_name)

      """
    _      _      _      _      _      _      _
    _( )__ _( )__ _( )__ _( )__ _( )__ _( )__ _( )__
  _|     _|     _|     _|     _|     _|     _|     _|
(_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_
  |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
  |_     |_     |_     |_     |_     |_     |_     |_
  _) _   _) _   _) _   _) _   _) _   _) _   _) _   _)
  |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
  _|     _|     _|     _|     _|     _|     _|     _|
(_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_   _ (_
  |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
  |_     |_     |_     |_     |_     |_     |_     |_
  _) _   _) _   _) _   _) _   _) _   _) _   _) _#{initials} _)
  |__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|__( )_|
 
  """
  end
end
