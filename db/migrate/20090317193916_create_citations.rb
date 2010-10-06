class CreateCitations < ActiveRecord::Migration
  def self.up
    create_table :citations do |t|
      t.column :title, :string
      t.column :bibliography_id, :integer
      t.column :pages, :string #can also include volume number
      t.column :canonic_url, :string
      t.column :notes, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :citations
  end
end
