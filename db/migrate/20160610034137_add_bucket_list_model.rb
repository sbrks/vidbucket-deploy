class AddBucketListModel < ActiveRecord::Migration
  def change
  	  	create_table :buckets do |t|
  		t.string :item
  		t.string :description
  		t.references :user
  		t.timestamps
  	end

  end
end