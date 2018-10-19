class CreateCrisisTriggers < ActiveRecord::Migration[5.2]
  def change
    create_table :crisis_triggers do |t|
      t.references :trigger, foreign_key: true
      t.references :migraine, foreign_key: true
      t.text :details

      t.timestamps
    end
  end
end
