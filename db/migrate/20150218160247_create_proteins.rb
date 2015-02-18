class CreateProteins < ActiveRecord::Migration
  def change
    create_table :proteins do |t|
      t.string :protfamily
      t.string :protclass
      t.string :protsubclass
      t.string :protgroup
      t.string :protsubgroup
      t.string :protsubsubgroup

      t.timestamps null: false
    end
  end
end
