# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  content       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  activities_id :integer
#  enrollment_id :integer
#  location_id   :integer
#
class Review < ApplicationRecord

  belongs_to(:activities, { :required => true, :class_name => "Activity", :foreign_key => "activities_id" })
  belongs_to(:enrollment, { :required => true, :class_name => "Enrollment", :foreign_key => "enrollment_id" })
  belongs_to(:location, { :required => true, :class_name => "Location", :foreign_key => "location_id" })

end
