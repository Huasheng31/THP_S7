class CreateFollowcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :followcomments do |t|
      t.string :comment
      t.belongs_to :comment, index: true
      t.timestamps
    end
  end
end