# == Schema Information
#
# Table name: enrollments
#
#  id          :integer          not null, primary key
#  role        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  activity_id :integer
#  user_id     :integer
#
class Enrollment < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:activity, { :required => true, :class_name => "Activity", :foreign_key => "activity_id" })
  has_many(:reviews, { :class_name => "Review", :foreign_key => "enrollment_id", :dependent => :destroy }) 
end
