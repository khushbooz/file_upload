class AddAvatarsToUploads < ActiveRecord::Migration[5.1]
  def change
    add_column :uploads, :avatars, :json
  end
end
