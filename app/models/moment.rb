# == Schema Information
#
# Table name: moments
#
#  id         :integer          not null, primary key
#  caption    :text
#  image      :string
#  time       :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :integer
#
class Moment < ApplicationRecord
  belongs_to :game
  has_many :roles

  has_many :people, :through => :roles, :source => :player

end
