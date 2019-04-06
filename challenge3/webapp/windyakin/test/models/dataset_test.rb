# == Schema Information
#
# Table name: datasets
#
#  id                :bigint(8)        not null, primary key
#  label             :integer          not null
#  house             :integer          not null
#  year              :integer          not null
#  month             :integer          not null
#  temperature       :float(24)        not null
#  daylight          :float(24)        not null
#  energy_production :integer          not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class DatasetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
