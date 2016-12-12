class Course < ActiveRecord::Base
    validates :title, :professor, :coursecode, :semester, presence: true
end
