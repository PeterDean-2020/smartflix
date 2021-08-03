class Movie < ApplicationRecord

  def to_param
    title
  end
end
