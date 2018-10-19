class CreateCrisisTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :crisis_treatments do |t|
      t.float :dose
      t.references :migraine, foreign_key: true
      t.references :treatment, foreign_key: true

      t.timestamps
    end
  end
end
