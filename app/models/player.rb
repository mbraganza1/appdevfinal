# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Player < ApplicationRecord
  has_many :roles
  has_many :moments, :through => :roles, :source => :game
end
