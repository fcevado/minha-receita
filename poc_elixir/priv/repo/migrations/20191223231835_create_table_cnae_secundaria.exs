defmodule Receita.Repo.Migrations.CreateTableCnaeSecundaria do
  use Ecto.Migration

  def change do
    create table(:cnae_secundaria) do
      add :empresa_id, references("empresa"), null: true
      add :cnae_id, references("cnae"), null: true
      add :cnpj, :text
      add :codigo, :text
    end

    create index(:cnae_secundaria, [:cnpj])
    create index(:cnae_secundaria, [:codigo])
  end
end
