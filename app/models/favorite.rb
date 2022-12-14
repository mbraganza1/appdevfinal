# == Schema Information
#
# Table name: favorites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  moment_id  :integer
#  user_id    :integer
#
class Favorite < ApplicationRecord
  belongs_to :user, :required => true
  belongs_to :moment, :required => true

  validates :moment_id, :presence => true
end
