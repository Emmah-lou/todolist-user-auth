class CreateSessionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|

      t.timestamps
    end
  end
end
