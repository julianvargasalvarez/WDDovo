class CreatingApiKeys < ActiveRecord::Migration
  def up
    create_table :api_keys do |t|
      t.string :site_name
      t.string :api_key
    end
  end

  def down
    drop_table :api_keys
  end
end
