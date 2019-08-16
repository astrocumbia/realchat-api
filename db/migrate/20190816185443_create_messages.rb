class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.belongs_to :room
      t.belongs_to :user

      t.timestamps
    end
  end
end
