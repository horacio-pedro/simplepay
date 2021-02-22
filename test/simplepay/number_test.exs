defmodule Simplepay.NumbersTest do
  use ExUnit.Case

  alias Simplepay.Numbers

  describe "sum_from_file/1" do
    test "When there is a file with given name, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert response == expected_response
    end

    test "When there is no file with given name, return an error" do
      response = Numbers.sum_from_file("notexist")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
