# == Schema Information
#
# Table name: predictions
#
#  id         :integer          not null, primary key
#  prediction :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :integer
#  user_id    :integer
#
class Prediction < ApplicationRecord
end
