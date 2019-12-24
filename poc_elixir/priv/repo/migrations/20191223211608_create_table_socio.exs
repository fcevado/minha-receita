defmodule Receita.Repo.Migrations.CreateTableSocio do
  use Ecto.Migration

  def change do
    create table(:socio) do
      add :empresa_id, references("empresa"), null: true
      add :cnpj, :text
      add :identificador_de_socio, :integer
      add :nome_socio, :text
      add :cnpj_cpf_do_socio, :text
      add :codigo_qualificacao_socio, :integer
      add :percentual_capital_social, :integer
      add :data_entrada_sociedade, :text
      add :cpf_representante_legal, :text
      add :nome_representante_legal, :text
      add :codigo_qualificacao_representante_legal, :integer
    end

    create index(:socio, [:cnpj])
  end
end
