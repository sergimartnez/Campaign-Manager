class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text          :comment_text
      t.boolean       :status
      t.references    :content, index: true
      t.references    :user, index: true
      t.timestamps
    end
  end
end
