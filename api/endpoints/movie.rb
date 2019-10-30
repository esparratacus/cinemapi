# frozen_string_literal: true

module Api
  module Endpoints
    class Movie < Grape::API
      content_type :json, 'application/json'

      resource :movies do
        desc 'create movie'
        params do
          requires :name, type: String, desc:'Name of the movie'
          requires :rating, type: Float, desc:'Movie rating'
          requires :release_date, type: Date, desc: 'Movie release date'
          requires :end_date, type: Date, desc: 'Movie projection end'
        end
        post do
          new_movie= Models::Movie.create({name:params[:name],rating:params[:rating],release_date: params[:release_date],end_date:params[:end_date]})
          present new_movie,with: Api::Entities::Movie
        end

        desc 'get movie'
        params do
          requires :id,type: Integer, desc:'Movie Id'
        end
        route_param :id do
          get do
            movie=Models::Movie[params[:id]]
            present movie,with: Api::Entities::Movie
          end
        end

        desc 'get all movies available on a specific date'
          get do
            movies = Models::Movie.filter(params[:r_date] => :release_date..:end_date).all
            present movies,with: Api::Entities::Movie
          end
        
        desc 'creates a reservation for a movie'
        params do
          requires :customer_full_name, type: String, desc: 'Name in the reservation'
          requires :customer_id_type, type: String, desc:'type of identification'
          requires :customer_id, type: String, desc: 'Customer legal id'
          requires :movie_session_date, type: Date, desc: 'Movie projection date'
        end
        post ':movie_id/reservations' do
          movie = Models::Movie[params[:movie_id]]
          new_reservation = movie.add_reservation(params)
          present new_reservation, with: Api::Entities::Reservation
        end
      end
    end
  end
end
