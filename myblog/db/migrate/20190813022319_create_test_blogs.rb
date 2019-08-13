class CreateTestBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :test_blogs do |t|
      t.string :title
      t.string :content, limit:140
    end
  end
end
