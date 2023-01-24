# == Schema Information
#
# Table name: bleats
#
#  id         :bigint           not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#
class Bleat < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_one :location, through: :author, source: :location

end
