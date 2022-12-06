# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  impact     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  moment_id  :integer
#  player_id  :integer
#
class Role < ApplicationRecord
end
