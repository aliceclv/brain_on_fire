class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
