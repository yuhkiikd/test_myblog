class ChaneContentToTestBlog < ActiveRecord::Migration[5.2]
  def change
    change_column :test_blogs, :content, :text, limit:140
  end
end
