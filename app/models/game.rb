# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  date       :date
#  image      :string
#  name       :string
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game < ApplicationRecord
  has_many :moments
  
end
