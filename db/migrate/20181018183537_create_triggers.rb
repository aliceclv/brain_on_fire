class CreateTriggers < ActiveRecord::Migration[5.2]
  def change
    create_table :triggers do |t|
      t.string :trigger_type

      t.timestamps
    end
  end
end
