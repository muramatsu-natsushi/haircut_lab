class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :image_path
      t.string :video_path
      t.string :content


      t.timestamps
    end
  end
end
