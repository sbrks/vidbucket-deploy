class AddUserToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :username, :string
  end
end
