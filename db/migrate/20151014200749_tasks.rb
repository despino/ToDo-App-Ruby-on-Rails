class Tasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :name, :string #name of task

      t.timestamps
    end
  end
end
