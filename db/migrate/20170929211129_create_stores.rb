class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |s|
    s.column(:name, :string)

    s.timestamps()
    end
  end
end
