class Course < ActiveRecord::Base
    validates :title, :professor, :coursecode, :semester, presence: true
    has_and_belongs_to_many :users
    
    def self.ofStudent(idno)
    end
end
