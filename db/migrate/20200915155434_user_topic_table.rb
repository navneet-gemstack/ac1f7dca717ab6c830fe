class UserTopicTable < ActiveRecord::Migration[6.0]
	def change		
		create_table :user_topics do |t|
			t.references :user, null: false ,foreign_key: true
			t.references :topic, null: false ,foreign_key: true
			t.timestamps
		end
		add_column :questions, :topic_id, :integer
	end
end
