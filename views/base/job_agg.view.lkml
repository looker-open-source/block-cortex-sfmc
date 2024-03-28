view: job_agg {
  sql_table_name: `@{GCP_PROJECT_ID}.@{REPORTING_DATASET}.JobAgg` ;;

  dimension: email_name {
    type: string
    sql: ${TABLE}.EmailName ;;
  }
  dimension: job_id {
    type: number
    sql: ${TABLE}.JobID ;;
  }
  dimension_group: sched {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SchedDate ;;
  }
  dimension: total_bounce {
    type: number
    sql: ${TABLE}.TotalBounce ;;
  }
  dimension: total_click {
    type: number
    sql: ${TABLE}.TotalClick ;;
  }
  dimension: total_delivered {
    type: number
    sql: ${TABLE}.TotalDelivered ;;
  }
  dimension: total_open {
    type: number
    sql: ${TABLE}.TotalOpen ;;
  }
  dimension: total_sent {
    type: number
    sql: ${TABLE}.TotalSent ;;
  }
  dimension: total_unique_click {
    type: number
    sql: ${TABLE}.TotalUniqueClick ;;
  }
  dimension: total_unique_open {
    type: number
    sql: ${TABLE}.TotalUniqueOpen ;;
  }
  dimension: total_unique_unsubscribe {
    type: number
    sql: ${TABLE}.TotalUniqueUnsubscribe ;;
  }
  dimension: total_unsubscribe {
    type: number
    sql: ${TABLE}.TotalUnsubscribe ;;
  }
  measure: count {
    type: count
    drill_fields: [email_name]
  }
}
