# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  address     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  activity_id :integer
#
class Location < ApplicationRecord

  belongs_to(:activity, { :required => true, :class_name => "Activity", :foreign_key => "activity_id" })
  has_many(:reviews, { :class_name => "Review", :foreign_key => "location_id" })
  has_many(:activities, { :class_name => "Activity", :foreign_key => "location_id", :dependent => :destroy })

end
