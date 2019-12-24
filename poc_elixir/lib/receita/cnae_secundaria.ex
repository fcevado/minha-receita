defmodule Receita.CnaeSecundaria do
  @moduledoc "Lista CNAE secundárias das Empresas"
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
    |> cast(params, ~w(cnpj codigo)a)
    |> validate_required(~w(cnpj codigo)a)
  end
end
