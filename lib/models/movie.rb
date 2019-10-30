# frozen_string_literal: true

module Models
  class Movie < Sequel::Model(:movies)
    one_to_many :reservations
  end
end
