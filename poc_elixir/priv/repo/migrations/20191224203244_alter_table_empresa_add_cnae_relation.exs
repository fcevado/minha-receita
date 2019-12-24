defmodule Receita.Repo.Migrations.AlterTableEmpresaAddCnaeRelation do
  use Ecto.Migration

  def change do
    alter table(:empresa) do
      add :cnae_id, references("cnae"), null: true
    end

    create index(:empresa, [:cnae_fiscal])
  end
end
