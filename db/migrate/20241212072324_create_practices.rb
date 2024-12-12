class CreatePractices < ActiveRecord::Migration[7.2]
  def change
    create_table :practices do |t|
      t.string :basic_english_sentence
      t.string :basic_japanese_sentence
      t.string :question
      t.string :image
      t.string :difficulty_rating
      t.string :answer
      t.references :practice_part, foreign_key: true

      t.timestamps
    end
  end
end
