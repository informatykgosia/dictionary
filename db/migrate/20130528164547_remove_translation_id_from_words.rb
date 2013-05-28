class RemoveTranslationIdFromWords < ActiveRecord::Migration
  def up
    remove_column :words, :translation_id
      end

  def down
    add_column :words, :translation_id, :integer
  end
end
