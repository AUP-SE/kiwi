class CreateHelpsess < ActiveRecord::Migration
  def up
    create_table :helpsesses do |t|
      t.string 'topic'
      t.string 'desc'
      t.integer 'RequesterID'
      t.integer 'HelperID'
      t.integer 'CourseID'
      t.datetime 'created_at'
    end
  end
  
  def down
    drop_tables 'helpsesses'
  end
  
end
