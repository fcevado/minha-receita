defmodule Receita.Cnae do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cnae" do
    field :codigo, :string
    field :descricao, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, ~w(codigo descricao)a)
    |> validate_required(~w(codigo descricao)a)
  end
end
