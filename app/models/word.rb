class Word < ActiveRecord::Base
  attr_accessible :category_id, :name
  
  has_and_belongs_to_many :synonyms, class_name: "Word", join_table: "word_synonyms", association_foreign_key: "synonym_id"
end
