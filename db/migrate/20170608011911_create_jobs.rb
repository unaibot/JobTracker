class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
