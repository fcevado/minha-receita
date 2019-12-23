defmodule Receita.Repo.Migrations.CreateTableCnae do
  use Ecto.Migration

  def change do
    create table(:cnae) do
      add :codigo, :text
      add :descricao, :text
    end

    create index(:cnae, [:codigo])
  end
end
