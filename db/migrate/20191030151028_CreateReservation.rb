Sequel.migration do
  change do
    create_table :reservations do
      primary_key :id
      foreign_key :movie_id
      String :customer_full_name
      String :customer_id
      String :customer_id_type
      Date :movie_session_date
    end
  end
end
