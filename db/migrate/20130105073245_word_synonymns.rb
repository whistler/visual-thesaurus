class WordSynonymns < ActiveRecord::Migration
  def up
    create_table :word_synonyms do |t|
      t.integer :word_id
      t.integer :synonym_id
    end
  end

  def down
    drop_table :word_synonyms
  end
end
