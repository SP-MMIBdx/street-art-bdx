class Streetart < ApplicationRecord
  belongs_to :artist

  def to_s
    name
  end
end
