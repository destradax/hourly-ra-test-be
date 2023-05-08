class CreateClassCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :class_codes do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
