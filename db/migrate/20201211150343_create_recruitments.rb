class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.date :date,            null: false
      t.time :time,            null: false
      t.string :team,          null: false
      t.string :sport,         null: false
      t.string :place,         null: false
      t.string :position
      t.integer :experience_id
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
