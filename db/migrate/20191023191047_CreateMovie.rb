Sequel.migration do
  change do
    create_table :movies do
      primary_key :id
      String :name
      Float :rating
      Date :release_date
      Date :end_date
    end
  end
end
