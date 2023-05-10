# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  location_id :integer
#
class Activity < ApplicationRecord

  belongs_to(:category, { :required => true, :class_name => "Category", :foreign_key => "category_id" })
  has_many(:reviews, { :class_name => "Review", :foreign_key => "activities_id", :dependent => :destroy })
  has_many(:enrollments, { :class_name => "Enrollment", :foreign_key => "activity_id", :dependent => :destroy })
  has_many(:locations, { :class_name => "Location", :foreign_key => "activity_id", :dependent => :destroy })
  belongs_to(:location, { :required => true, :class_name => "Location", :foreign_key => "location_id" })

end
