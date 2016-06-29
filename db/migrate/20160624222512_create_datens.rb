class CreateDatens < ActiveRecord::Migration
  def change
    create_table :datens do |t|
      t.string :was
      t.string :standort
      t.string :wohin
      t.datetime :datum

      t.timestamps null: false
    end
  end
end
