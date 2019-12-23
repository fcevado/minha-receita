defmodule Receita.CnaeSecundaria do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cnae_secundaria" do
    belongs_to :empresa, Receita.Empresa
    belongs_to :cnae, Receita.Cnae
    field :cnpj, :string
    field :codigo, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, ~w(codigo descricao)a)
    |> validate_required(~w(codigo descricao)a)
  end
end
