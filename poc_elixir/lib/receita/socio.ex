defmodule Receita.Socio do
  use Ecto.Schema
  import Ecto.Changeset

  schema "socio" do
    belongs_to :empresa, Receita.Empresa
    field :cnpj, :string
    field :identificador_de_socio, :integer
    field :nome_socio, :string
    field :cnpj_cpf_do_socio, :string
    field :codigo_qualificacao_socio, :integer
    field :percentual_capital_social, :integer
    field :data_entrada_sociedade, :string
    field :cpf_representante_legal, :string
    field :nome_representante_legal, :string
    field :codigo_qualificacao_representante_legal, :integer
  end

  @fields [
    :cnpj,
    :identificador_de_socio,
    :nome_sociom,
    :cnpj_cpf_do_socio,
    :codigo_qualificacao_socio,
    :percentual_capital_social,
    :data_entrada_sociedade,
    :cpf_representante_legal,
    :nome_repesentante_legal,
    :codigo_qualificacao_representante_legal,
    :empresa_id
  ]

  def changeset(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required([:cnpj])
  end
end
