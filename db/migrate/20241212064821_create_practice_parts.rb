class CreatePracticeParts < ActiveRecord::Migration[7.2]
  def change
    create_table :practice_parts do |t|
      t.string :number
      t.string :title

      t.timestamps
    end
  end
end
