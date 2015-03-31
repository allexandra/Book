class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :title
      t.datetime :published

      t.timestamps null: false
    end
  end
end
