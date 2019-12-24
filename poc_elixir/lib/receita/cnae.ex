defmodule Receita.Cnae do
  @moduledoc "Descrição do CNAE"
  use Ecto.Schema
  import Ecto.Changeset

  schema "cnae" do
    has_many :cnae_secundarias, Receita.CnaeSecundaria
    has_many :empresas, Receita.Empresa

    field :codigo, :string
    field :descricao, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, ~w(codigo descricao)a)
    |> validate_required(~w(codigo descricao)a)
  end
end
