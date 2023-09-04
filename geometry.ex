defmodule Geometry do
  def reactangle_area(a, b) do
    a * b
  end

  defmodule Rectangle do
    import IO
    def simple_area(a, b), do: a * b
    def cubes(a), do: a * a * a
    def happy, do: puts("because iam tacky")
    def sad, do: puts("this is fucking sad")
    def squares(s), do: s * s
  end

  defmodule Calculator do
    def add(a, b \\ 0), do: a + b
  end

  defmodule Pussy do
    def quad(a, b \\ 1, c \\ 1, d \\ 1), do: a * b * c * d
  end

  defmodule Circle do
    @moduledoc "implements basic circle function on the beam"
    @pi 3.14

    @doc "To calculate the area of a circle"
    def area(r), do: @pi * r * r

    @doc "To calculate the circumference of the circle"
    def circumference(r), do: 2 * @pi * r
  end

  defmodule Printname do 
    def printname(_name, 0), do: :ok
    def printname(name, n) do 
      IO.puts(name)
      printname(name, n-1)
    end 
  end

  defmodule PrintLearnlyFrom1ToN do
     def lean(0), do: :ok
     def lean(n) do 
      lean(n-1)
      IO.puts(n)
     end
  end

  defmodule PrintLinearlyFromNTo1 do 
    def lean(0), do: :ok
    def lean(n) do 
      IO.puts(n)
      lean(n-1)
    end
  end
  
  defmodule Factorial do 
    defp factA(0, sum), do: sum 
    defp factA(number, sum ), do: factA(number-1, sum * number)
    def  factTailOp(number), do: factA(number, 1)
    def  factNonTailOp(1), do: 1
    def  factNonTailOp(number), do: number * factNonTailOp(number-1)
  end

  defmodule ReverseList do 
    defp reverse([], acc),           do: acc
    defp reverse([head | tail], acc), do: reverse(tail, [head | acc])
    def  reverse(list),              do: reverse(list, [])
  end  

  defmodule Palindrome do 
    def isPalindrome?(value), do: value == String.reverse(value)
  end
end
