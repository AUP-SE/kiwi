require 'spec_helper'

describe Course do
    it 'has a valid factory' do
        FactoryGirl.create(:course).should be_valid
    end 
    it 'is invalid without a coursecode' do
        FactoryGirl.build(:course, :coursecode => nil).should_not be_valid
    end
    it 'is invalid without a teacher' do 
        FactoryGirl.build(:course, :professor => nil).should_not be_valid
    end 
    
    it 'is invalid without a course title' do
        FactoryGirl.build(:course, :title => nil).should_not be_valid
    end
end