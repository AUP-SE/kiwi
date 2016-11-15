class Courses < ActiveRecord::Migration
  def up
    create_table 'courses' do |c|
      c.string 'title'
      c.string 'coursecode'
      c.string 'professor'
      c.string 'semester'
      #not going to do a students thing cause that will be in the students folder?
    end
  end
  
  def down
    drop_tables 'courses'
  end
end

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
    end 
  end 
  def down
    drop_tables 'professors'
  end
      
end

