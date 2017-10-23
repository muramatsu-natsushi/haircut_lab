class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image
      t.string :video
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
