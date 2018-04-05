connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: parks_and_rec_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: parks_and_rec_default_datagroup
