class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
