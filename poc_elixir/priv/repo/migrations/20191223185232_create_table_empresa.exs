defmodule Receita.Repo.Migrations.CreateTableEmpresa do
  use Ecto.Migration

  def change do
    create table(:empresa) do
      add :cnpj, :text
      add :identificador_matriz_filial, :integer
      add :razao_social, :text
      add :nome_fantasia, :text
      add :situacao_cadastral, :integer
      add :data_situacao_cadastral, :string
      add :motivo_situacao_cadastral, :integer
      add :nome_cidade_exterior, :text
      add :codigo_natureza_juridica, :integer
      add :data_inicio_atividade, :string
      add :cnae_fiscal, :integer
      add :descricao_tipo_logradouro, :text
      add :logradouro, :text
      add :numero, :text
      add :complemento, :text
      add :bairro, :text
      add :cep, :integer
      add :uf, :text
      add :codigo_municipio, :integer
      add :municipio, :text
      add :ddd_telefone_1, :text
      add :ddd_telefone_2, :text
      add :ddd_fax, :text
      add :qualificacao_do_responsavel, :integer
      add :capital_social, :decimal
      add :porte, :integer
      add :opcao_pelo_simples, :bool
      add :data_opcao_pelo_simples, :text
      add :data_exclusao_do_simples, :text
      add :opcao_pelo_mei, :bool
      add :situacao_especial, :text
      add :data_situacao_especial, :text
    end

    create index(:empresa, [:cnpj])
  end
end
