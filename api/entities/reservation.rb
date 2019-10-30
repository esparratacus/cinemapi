# frozen_string_literal: true

module Api
  module Entities
    class Reservation < Grape::Entity
      expose :id
      expose :movie_id
      expose :customer_full_name
      expose :customer_id_type
      expose :customer_id
      expose :movie_session_date
    end
  end
end
