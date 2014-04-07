class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :status, limit: 140
      t.string :username

      t.timestamps
    end
  end
end
