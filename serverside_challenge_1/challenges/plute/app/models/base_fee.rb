class BaseFee < ApplicationRecord
  belongs_to :plan

  validates :ampere, presence: true, inclusion: { in: ElectricityFee::AMPERE }
  validates :base_fee, presence: true, uniqueness: { scope: [:plan_id, :ampere] }
end
