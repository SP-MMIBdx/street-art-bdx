class Artist < ApplicationRecord
  has_many :streetarts

  def to_s
    name
  end
end
