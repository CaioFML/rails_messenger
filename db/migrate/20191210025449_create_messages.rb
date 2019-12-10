class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :sender, null: false, foreign_key: true
      t.references :receiver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
