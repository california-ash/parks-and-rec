view: facilities {
  derived_table: {
    sql: SELECT * FROM `lookerdata.national_parks.facilities` LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: facilityadaaccess {
    type: string
    sql: ${TABLE}.FACILITYADAACCESS ;;
  }

  dimension: facilitydescription {
    type: string
    sql: ${TABLE}.FACILITYDESCRIPTION ;;
  }

  dimension: facilitydirections {
    type: string
    sql: ${TABLE}.FACILITYDIRECTIONS ;;
  }

  dimension: facilityemail {
    type: string
    sql: ${TABLE}.FACILITYEMAIL ;;
  }

  dimension: facilityid {
    type: number
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension: facilitylatitude {
    type: number
    sql: ${TABLE}.FACILITYLATITUDE ;;
  }

  dimension: facilitylongitude {
    type: number
    sql: ${TABLE}.FACILITYLONGITUDE ;;
  }

  dimension: facilitymapurl {
    type: string
    sql: ${TABLE}.FACILITYMAPURL ;;
  }

  dimension: facilityname {
    type: string
    sql: ${TABLE}.FACILITYNAME ;;
  }

  dimension: facilityphone {
    type: string
    sql: ${TABLE}.FACILITYPHONE ;;
  }

  dimension: facilityreservationurl {
    type: string
    sql: ${TABLE}.FACILITYRESERVATIONURL ;;
  }

  dimension: facilitytypedescription {
    type: string
    sql: ${TABLE}.FACILITYTYPEDESCRIPTION ;;
  }

  dimension: facilityusefeedescription {
    type: string
    sql: ${TABLE}.FACILITYUSEFEEDESCRIPTION ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.KEYWORDS ;;
  }

  dimension_group: lastupdateddate {
    type: time
    sql: ${TABLE}.LASTUPDATEDDATE ;;
  }

  dimension: legacyfacilityid {
    type: string
    sql: ${TABLE}.LEGACYFACILITYID ;;
  }

  dimension: orgfacilityid {
    type: string
    sql: ${TABLE}.ORGFACILITYID ;;
  }

  dimension: staylimit {
    type: string
    sql: ${TABLE}.STAYLIMIT ;;
  }

  set: detail {
    fields: [
      facilityadaaccess,
      facilitydescription,
      facilitydirections,
      facilityemail,
      facilityid,
      facilitylatitude,
      facilitylongitude,
      facilitymapurl,
      facilityname,
      facilityphone,
      facilityreservationurl,
      facilitytypedescription,
      facilityusefeedescription,
      keywords,
      lastupdateddate_time,
      legacyfacilityid,
      orgfacilityid,
      staylimit
    ]
  }
}
