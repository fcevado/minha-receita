defmodule Receita.Empresa do
  @moduledoc "Informações sobre a Empresa"
  use Ecto.Schema
  import Ecto.Changeset

  schema "empresa" do
    has_many :socios, Receita.Socio
    has_many :cnae_secundarias, Receita.CnaeSecundaria

    field :cnpj, :string
    field :identificador_matriz_filial, :integer
    field :razao_social, :string
    field :nome_fantasia, :string
    field :situacao_cadastral, :integer
    field :data_situacao_cadastral, :date
    field :motivo_situacao_cadastral, :integer
    field :nome_cidade_exterior, :string
    field :codigo_natureza_juridica, :integer
    field :data_inicio_atividade, :date
    field :cnae_fiscal, :integer
    field :descricao_tipo_logradouro, :string
    field :logradouro, :string
    field :numero, :string
    field :complemento, :string
    field :bairro, :string
    field :cep, :integer
    field :uf, :string
    field :codigo_municipio, :integer
    field :municipio, :string
    field :ddd_telefone_1, :string
    field :ddd_telefone_2, :string
    field :ddd_fax, :string
    field :qualificacao_do_responsavel, :integer
    field :capital_social, :decimal
    field :porte, :integer
    field :opcao_pelo_simples, :boolean
    field :data_opcao_pelo_simples, :string
    field :data_exclusao_do_simples, :string
    field :opcao_pelo_mei, :boolean
    field :situacao_especial, :string
    field :data_situacao_especial, :string
  end

  @fields [
    :cnpj,
    :identificador_matriz_filial,
    :razao_social,
    :nome_fantasia,
    :situacao_cadastral,
    :data_situacao_cadastral,
    :motivo_situacao_cadastral,
    :nome_cidade_exterior,
    :codigo_natureza_juridica,
    :data_inicio_atividade,
    :cnae_fiscal,
    :descricao_tipo_logradouro,
    :logradouro,
    :numero,
    :complemento,
    :bairro,
    :cep,
    :uf,
    :codigo_municipio,
    :municipio,
    :ddd_telefone_1,
    :ddd_telefone_2,
    :ddd_fax,
    :qualificacao_do_responsavel,
    :capital_social,
    :porte,
    :opcao_pelo_simples,
    :data_opcao_pelo_simples,
    :data_exclusao_do_simples,
    :opcao_pelo_mei,
    :situacao_especial,
    :data_situacao_especial
  ]

  def changeset(struct, params) do
    struct
    |> cast(params, @fields)
    |> validate_required([:cnpj])
  end
end
