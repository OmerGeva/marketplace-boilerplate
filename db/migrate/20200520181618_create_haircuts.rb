class CreateHaircuts < ActiveRecord::Migration[5.2]
  def change
    create_table :haircuts do |t|
      t.string :title
      t.string :cost
      t.float :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
