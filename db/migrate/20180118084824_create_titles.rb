class CreateTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :titles do |t|
      t.string :itle
      t.date :from_date
      t.date :to_date
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
