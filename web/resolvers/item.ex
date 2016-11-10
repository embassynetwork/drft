defmodule Drft.Resolvers.Item do
  def update(_parent, attributes, _info) do
    IO.inspect attributes
    {:ok, %{id: attributes.id, name: 'output'}}
  end
end
