class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.references :article, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
