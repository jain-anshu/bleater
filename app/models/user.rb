# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  email       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer
#
class User < ApplicationRecord
  has_many :authored_bleats, class_name: 'Bleat', foreign_key: :author_id
  belongs_to :location
end
