#########################################################################################################
# Purpose: Contains information on account-specific JobIDs as a unique identifier of Email send instances.
#          Used for Email performance reporting.
#########################################################################################################

include: "/views/base/job_agg.view"
# The name of this view in Looker is "Job Agg"
view: +job_agg {

  ######### PRIMARY KEY #########
  dimension: job_id_pk {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.JobID ;;
  }


  # This dimension will be called "Email Broadcast" in Explore. Email Broadcast is the concatenation of email and job id.
  dimension: email_broadcast {
    type: string
    sql: CONCAT(${email_name}, ' ', ${job_id}) ;;
    }

 measure: sum_of_delivered_email {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails delivered."
    sql: ${total_delivered} ;;
  }

  measure: sum_of_bounced_email {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails bounced."
    sql: ${total_bounce} ;;
  }

  measure: sum_of_email_click {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails clicked."
    sql: ${total_click} ;;
  }

  measure: sum_of_open_email {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails opened."
    sql:${total_open} ;;
  }

  measure: sum_of_sent_email {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails sent."
    sql: ${total_sent} ;;
  }

  measure: sum_of_unique_click {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total unique Emails clicked."
    sql: ${total_unique_click} ;;
  }

  measure: sum_of_unique_open {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total unique Emails opened."
    sql: ${total_unique_open} ;;
  }

  measure: sum_of_unsubscribe {
    type: sum
    value_format_name: "positive_m_or_k"
    description: "Total Emails unsubscribed."
    sql: ${total_unsubscribe} ;;
  }

  measure: delivery_rate {
    type: number
    description: "The percentage of Emails delivered."
    sql: SAFE_DIVIDE(${sum_of_delivered_email},${sum_of_sent_email}) ;;
    value_format_name:percent_2
  }

  measure: ctr {
    type: number
    description: "The percentage of visitors who clicked a link contained in an Email."
    sql: SAFE_DIVIDE(${sum_of_unique_click},${sum_of_delivered_email}) ;;
    value_format_name:percent_2
  }

  measure: bounce_rate {
    type: number
    description: "The percentage of bounce Emails."
    sql: SAFE_DIVIDE(${sum_of_bounced_email},${sum_of_sent_email}) ;;
    value_format_name: percent_2
  }

  measure: unsubscribe_rate {
    type: number
    description: "The percentage of visitors who unsubscribed."
    sql: SAFE_DIVIDE(${sum_of_unsubscribe},${sum_of_sent_email}) ;;
    value_format_name:percent_2
  }

  measure: open_rate {
    type: number
    description: "The percentage of Emails opened."
    sql: SAFE_DIVIDE(${sum_of_unique_open},${sum_of_delivered_email}) ;;
    value_format_name:percent_2
  }

}
