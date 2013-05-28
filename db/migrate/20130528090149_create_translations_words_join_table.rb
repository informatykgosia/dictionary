class CreateTranslationsWordsJoinTable < ActiveRecord::Migration
  def change
    create_table :translations_words, :id=>false do |t|
      t.integer :word_id
      t.integer :translation_id

     
    end
  end
end
