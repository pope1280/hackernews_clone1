class CreatePost < ActiveRecord::Migration
  def change
    create_table   :posts do |t|
      t.string     :title
      t.string     :source
      t.references :user

      t.timestamps
    end
  end
end
