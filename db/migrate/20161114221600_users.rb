class Users < ActiveRecord::Migration 
  def up 
    create_table 'users' do |t|
        t.string 'name'
        t.string 'email'
        t.string 'department'
        t.string 'major'
        t.boolean 'isProfessor'
        t.boolean 'isHelper'
        t.integer 'CourseID1'
        t.integer 'CourseID2'
        t.integer 'CourseID3'
        t.integer 'CourseID4'
        t.text 'biography'
        t.timestamps
    end
  end
  
  def down
    drop_tables 'users'
  end 
end 