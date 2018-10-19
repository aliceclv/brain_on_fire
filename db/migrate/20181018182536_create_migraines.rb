class CreateMigraines < ActiveRecord::Migration[5.2]
  def change
    create_table :migraines do |t|
      t.datetime :triggered_at
      t.integer :intensity
      t.boolean :cured
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
