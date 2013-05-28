class Word < ActiveRecord::Base
	LANGUAGES = [:pl, :en]
	has_and_belongs_to_many :translations, 
		:class_name => "Word",
		:join_table => "translations_words",
    :foreign_key => "word_id",
    :association_foreign_key => "translation_id"

  def translations=(ids)
    super(Word.where("id IN (?)", ids))
  end


	scope :to_language, lambda { |l| where("language = ?", l) }


end
