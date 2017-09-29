class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table(:brands) do |s|
     s.column(:brand, :string)
     s.column(:price, :integer)

     s.timestamps()
    end
  end
end
