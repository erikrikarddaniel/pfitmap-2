class CreateHmmProfiles < ActiveRecord::Migration
  def change
    create_table :hmm_profiles do |t|
      t.string :name, null: false
      t.string :rank, null: false
      t.string :desc
      t.references :hmm_profile, index: true

      t.timestamps null: false
    end
    add_index :hmm_profiles, :name, unique: true
    add_foreign_key :hmm_profiles, :hmm_profiles
  end
end
