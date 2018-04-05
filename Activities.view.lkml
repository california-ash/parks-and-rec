view: Activities {
  derived_table: {
    sql: SELECT * FROM `lookerdata.national_parks.activities` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: activityid {
    type: number
    sql: ${TABLE}.ACTIVITYID ;;
  }

  dimension: activitylevel {
    type: number
    sql: ${TABLE}.ACTIVITYLEVEL ;;
  }

  dimension: activityname {
    type: string
    sql: ${TABLE}.ACTIVITYNAME ;;
  }

  dimension: activityparentid {
    type: number
    sql: ${TABLE}.ACTIVITYPARENTID ;;
  }

  set: detail {
    fields: [activityid, activitylevel, activityname, activityparentid]
  }
}
