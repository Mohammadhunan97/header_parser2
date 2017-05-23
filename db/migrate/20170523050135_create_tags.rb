class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tagtype
      t.text :content
      t.references :url, foreign_key: true

      t.timestamps
    end
  end
end
