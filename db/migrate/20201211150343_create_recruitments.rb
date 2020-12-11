class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|

      t.timestamps
    end
  end
end
