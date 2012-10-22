class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :subject_class #model name
      t.string :action #controller action
      t.string :name #user understandable action name
      t.text :description #permission description

      t.timestamps
    end
  end
end
