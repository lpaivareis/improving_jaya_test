class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :body
      t.string :state
      t.string :url

      t.timestamps
    end
  end
end
