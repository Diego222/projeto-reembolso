class CreateViagems < ActiveRecord::Migration
  def change
    create_table :viagems do |t|
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
