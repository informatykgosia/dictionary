class AddTranslationIdToWords < ActiveRecord::Migration
  def change
  	add_column :words, :translation_id, :integer
  end
end
