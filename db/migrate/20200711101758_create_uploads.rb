class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :file, null: false, default: ""
      t.integer  :user_id
      t.timestamps
    end
  end
end
