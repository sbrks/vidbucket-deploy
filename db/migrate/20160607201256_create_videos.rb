class CreateVideos < ActiveRecord::Migration
  def change
  	create_table :videos do |t|
  		t.string :filepath
  		t.string :caption
  		t.string :video_url
  		t.references :user
  		t.timestamps
  	end
  end
end

