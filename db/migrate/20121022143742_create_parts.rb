class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name

      t.timestamps
    end
  end
end
