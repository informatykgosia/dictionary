class Word < ActiveRecord::Base
	has_and_belongs_to_many :translations, 
		:class_name => "Word",
		:association_foreign_key => "translation_id",
		:join_table => "translations_words"

		scope :to_language, lambda { |l| where("language = ?", l) }
end
