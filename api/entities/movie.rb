# frozen_string_literal: true

module Api
  module Entities
    class Movie < Grape::Entity
      expose :id
      expose :name
      expose :release_date
      expose :end_date
      expose :rating
    end
  end
end
