view: campsites {
  derived_table: {
    sql: SELECT * FROM `lookerdata.national_parks.campsites` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: campsiteaccessible {
    type: string
    sql: ${TABLE}.CAMPSITEACCESSIBLE ;;
  }

  dimension: campsiteid {
    type: number
    sql: ${TABLE}.CAMPSITEID ;;
  }

  dimension: campsitename {
    type: string
    sql: ${TABLE}.CAMPSITENAME ;;
  }

  dimension: campsitetype {
    type: string
    sql: ${TABLE}.CAMPSITETYPE ;;
  }

  dimension_group: createddate {
    type: time
    sql: ${TABLE}.CREATEDDATE ;;
  }

  dimension: facilityid {
    type: number
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension_group: lastupdateddate {
    type: time
    sql: ${TABLE}.LASTUPDATEDDATE ;;
  }

  dimension: loop {
    type: string
    sql: ${TABLE}.LOOP ;;
  }

  dimension: typeofuse {
    type: string
    sql: ${TABLE}.TYPEOFUSE ;;
  }

  set: detail {
    fields: [
      campsiteaccessible,
      campsiteid,
      campsitename,
      campsitetype,
      createddate_time,
      facilityid,
      lastupdateddate_time,
      loop,
      typeofuse
    ]
  }
}
