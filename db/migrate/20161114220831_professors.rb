class Professors < ActiveRecord::Migration
  def up
    create_table 'professors' do |p|
      p.string 'email' 
      p.string 'name'
      p.string 'department'
      p.integer 'CourseID1'
      p.integer 'CourseID2'
      p.integer 'CourseID3'
      p.integer 'CourseID4'
      p.timestamps
    end 
  end 
  def down
    drop_tables 'professors'
  end
      
end