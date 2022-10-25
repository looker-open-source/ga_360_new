

view: event_action_funnel {
  
  derived_table: {
    sql: SELECT event1.full_visitor_id as full_vistor_id,
               event1.event_sequence_number as event1_event_sequence_number, event1.hit_time as event1_hit_time, event1.event_action as event1_event_action, event1.hit_id as event1_hit_id, event1.id as event1_session_id,
               event2.event_sequence_number as event2_event_sequence_number, event2.hit_time as event2_time, event2.event_action as event2_event_action, event2.hit_id as event2_hit_id, event2.id as event2_session_id,
               event3.event_sequence_number as event3_event_sequence_number, event3.hit_time as event3_time, event3.event_action as event3_event_action,event3.hit_id as event3_hit_id, event3.id as event3_session_id,
               event4.event_sequence_number as event4_event_sequence_number, event4.hit_time as event4_time, event4.event_action as event4_event_action,event4.hit_id as event4_hit_id, event4.id as event4_session_id,
               event5.event_sequence_number as event5_event_sequence_number, event5.hit_time as event5_time, event5.event_action as event5_event_action,event5.hit_id as event5_hit_id, event5.id as event5_session_id,
               event6.event_sequence_number as event6_event_sequence_number, event6.hit_time as event6_time, event6.event_action as event6_event_action,event6.hit_id as event6_hit_id, event6.id as event6_session_id
        FROM ${event_action_facts.SQL_TABLE_NAME} event1
        LEFT JOIN ${event_action_facts.SQL_TABLE_NAME} event2
        ON event1.id = event2.id AND event1.event_sequence_number + 1 = event2.event_sequence_number
         LEFT JOIN ${event_action_facts.SQL_TABLE_NAME} event3
        ON event1.id = event3.id AND event1.event_sequence_number + 2 = event3.event_sequence_number
         LEFT JOIN ${event_action_facts.SQL_TABLE_NAME} event4
        ON event1.id = event4.id AND event1.event_sequence_number + 3 = event4.event_sequence_number
         LEFT JOIN ${event_action_facts.SQL_TABLE_NAME} event5
        ON event1.id = event5.id AND event1.event_sequence_number + 4 = event5.event_sequence_number
         LEFT JOIN ${event_action_facts.SQL_TABLE_NAME} event6
        ON event1.id = event6.id AND event1.event_sequence_number + 5 = event6.event_sequence_number
        ;;
    persist_for: "24 hours"
  }

 ########## PRIMARY KEYS ##########

  dimension: event1_hit_id {
    type: string
    sql: ${TABLE}.event1_hit_id ;;
    primary_key: yes
    hidden: yes
  }


 ########## FILTERS ##########

  filter: event_1 {
    group_label: "Funnel Events"
    suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 1 to be used with Count of Event 1"
  }

  filter: event_2 {
    group_label: "Funnel Events"
    suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 2 to be used with Count of Event 2"
  }

  filter: event_3 {
    group_label: "Funnel Events"
    suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 3 to be used with Count of Event 3"
  }

  filter: event_4 {
    group_label: "Funnel Events"
   suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 4 to be used with Count of Event 4"
  }

  filter: event_5 {
    group_label: "Funnel Events"
   suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 5 to be used with Count of Event 5"
  }

  filter: event_6 {
    group_label: "Funnel Events"
   suggest_explore: ga_sessions
    suggest_dimension: hits.event_action
    description: "Event 6 to be used with Count of Event 6"
  }

  dimension: full_vistor_id {
    type: string
    sql: ${TABLE}.full_vistor_id ;;
  }

 ########## DIMENSIONS ##########

  dimension: event1_event_sequence_number {
    type: number
    sql: ${TABLE}.event1_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event1_hit_time {
    type: time
    sql: ${TABLE}.event1_hit_time ;;
    hidden: yes
  }

  dimension: event1_event_action {
    type: string
    sql: ${TABLE}.event1_event_action ;;
    hidden: yes
  }


  dimension: event1_session_id {
    type: string
    sql: ${TABLE}.event1_session_id ;;
    hidden: yes
  }

  dimension: event2_event_sequence_number {
    type: number
    sql: ${TABLE}.event2_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event2_time {
    type: time
    sql: ${TABLE}.event2_time ;;
    hidden: yes
  }

  dimension: event2_event_action {
    type: string
    sql: ${TABLE}.event2_event_action ;;
    hidden: yes
  }

  dimension: event2_hit_id {
    type: string
    sql: ${TABLE}.event2_hit_id ;;
    hidden: yes
  }

  dimension: event2_session_id {
    type: string
    sql: ${TABLE}.event2_session_id ;;
    hidden: yes
  }

  dimension: event3_event_sequence_number {
    type: number
    sql: ${TABLE}.event3_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event3_time {
    type: time
    sql: ${TABLE}.event3_time ;;
    hidden: yes
  }

  dimension: event3_event_action {
    type: string
    sql: ${TABLE}.event3_event_action ;;
    hidden: yes
  }

  dimension: event3_hit_id {
    type: string
    sql: ${TABLE}.event3_hit_id ;;
    hidden: yes
  }

  dimension: event3_session_id {
    type: string
    sql: ${TABLE}.event3_session_id ;;
    hidden: yes
  }

  dimension: event4_event_sequence_number {
    type: number
    sql: ${TABLE}.event4_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event4_time {
    type: time
    sql: ${TABLE}.event4_time ;;
    hidden: yes
  }

  dimension: event4_event_action {
    type: string
    sql: ${TABLE}.event4_event_action ;;
    hidden: yes
  }

  dimension: event4_hit_id {
    type: string
    sql: ${TABLE}.event4_hit_id ;;
    hidden: yes
  }

  dimension: event4_session_id {
    type: string
    sql: ${TABLE}.event4_session_id ;;
    hidden: yes
  }

  dimension: event5_event_sequence_number {
    type: number
    sql: ${TABLE}.event5_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event5_time {
    type: time
    sql: ${TABLE}.event5_time ;;
    hidden: yes
  }

  dimension: event5_event_action {
    type: string
    sql: ${TABLE}.event5_event_action ;;
    hidden: yes
  }

  dimension: event5_hit_id {
    type: string
    sql: ${TABLE}.event5_hit_id ;;
    hidden: yes
  }

  dimension: event5_session_id {
    type: string
    sql: ${TABLE}.event5_session_id ;;
    hidden: yes
  }

  dimension: event6_event_sequence_number {
    type: number
    sql: ${TABLE}.event6_event_sequence_number ;;
    hidden: yes
  }

  dimension_group: event6_time {
    type: time
    sql: ${TABLE}.event6_time ;;
    hidden: yes
  }

  dimension: event6_event_action {
    type: string
    sql: ${TABLE}.event6_event_action ;;
    hidden: yes
  }

  dimension: event6_hit_id {
    type: string
    sql: ${TABLE}.event6_hit_id ;;
    hidden: yes
  }

  dimension: event6_session_id {
    type: string
    sql: ${TABLE}.event6_session_id ;;
    hidden: yes
  }


  dimension: event1_hit_time_tagged {
    sql: CASE WHEN {% condition event_1 %} ${event1_event_action} {% endcondition %} THEN ${event1_hit_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }

  dimension: event2_hit_time_tagged {
    sql: CASE WHEN {% condition event_2 %} ${event2_event_action} {% endcondition %} THEN ${event2_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }

  dimension: event3_hit_time_tagged {
    sql: CASE WHEN {% condition event_3 %} ${event3_event_action} {% endcondition %} THEN ${event3_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }

  dimension: event4_hit_time_tagged {
    sql: CASE WHEN {% condition event_4 %} ${event4_event_action} {% endcondition %} THEN ${event4_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }

  dimension: event5_hit_time_tagged {
    sql: CASE WHEN {% condition event_5 %} ${event5_event_action} {% endcondition %} THEN ${event5_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }

  dimension: event6_hit_time_tagged {
    sql: CASE WHEN {% condition event_6 %} ${event6_event_action} {% endcondition %} THEN ${event6_time_raw}
      ELSE NULL END ;;
    hidden: yes
  }


  dimension: event1_session_id_tagged {
    sql:  CASE WHEN {% condition event_1 %} ${event1_event_action} {% endcondition %}  THEN ${event1_session_id}
              ELSE NULL END
            ;;
    hidden: yes
  }

  dimension: event2_session_id_tagged {
    sql:
          CASE WHEN {% condition event_2 %} ${event2_event_action} {% endcondition %}  AND ${event1_hit_time_tagged} < ${event2_hit_time_tagged} THEN ${event2_session_id}
            ELSE NULL END
            ;;
    hidden: yes
  }

  dimension: event3_session_id_tagged {
    sql:  CASE WHEN {% condition event_3 %} ${event3_event_action} {% endcondition %}  AND ${event1_hit_time_tagged} < ${event3_hit_time_tagged} AND ${event2_hit_time_tagged} < ${event3_hit_time_tagged} THEN ${event3_session_id}
            ELSE NULL END
            ;;
    hidden: yes
  }

  dimension: event4_session_id_tagged {
    sql:  CASE WHEN {% condition event_4 %} ${event4_event_action} {% endcondition %} AND ${event1_hit_time_tagged} < ${event4_hit_time_tagged} AND ${event2_hit_time_tagged} < ${event4_hit_time_tagged} AND ${event3_hit_time_tagged} < ${event4_hit_time_tagged} THEN ${event4_session_id}
            ELSE NULL END
            ;;
    hidden: yes
  }

  dimension: event5_session_id_tagged {
    sql:  CASE WHEN {% condition event_5 %} ${event5_event_action} {% endcondition %}  AND ${event1_hit_time_tagged} < ${event5_hit_time_tagged} AND ${event2_hit_time_tagged} < ${event5_hit_time_tagged} AND ${event3_hit_time_tagged} < ${event5_hit_time_tagged}  AND ${event4_hit_time_tagged} < ${event5_hit_time_tagged} THEN ${event5_session_id}
            ELSE NULL END
            ;;
    hidden: yes
  }

  dimension: event6_session_id_tagged {
    sql:  CASE WHEN {% condition event_6 %} ${event6_event_action} {% endcondition %} AND ${event1_hit_time_tagged} < ${event6_hit_time_tagged} AND ${event2_hit_time_tagged} < ${event6_hit_time_tagged} AND ${event3_hit_time_tagged} < ${event6_hit_time_tagged}  AND ${event4_hit_time_tagged} < ${event6_hit_time_tagged} AND ${event5_hit_time_tagged} < ${event6_hit_time_tagged} THEN ${event6_session_id}
            ELSE NULL END
            ;;
    hidden: yes
  }


 ########## MEASURES ##########

  measure: count_of_event_1 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event1_session_id_tagged} ;;
    label: "{% if event_1._in_query %}
    {{_filters['event_action_funnel.event_1']}}
    {% else %}
    Count of Event 1
    {% endif %}"
    description: "Count of Event 1 to be used with Event 1 filter, if no filter is selected it shows all events"
  }

  measure: count_of_event_2 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event2_session_id_tagged} ;;
    label: "{% if event_2._in_query %}
    {{_filters['event_action_funnel.event_2']}}
    {% else %}
    Count of Event 2
    {% endif %}"
    description: "Count of Event 2 to be used with Event 2 filter, if no filter is selected it shows all events"
  }

  measure: count_of_event_3 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event3_session_id_tagged} ;;
    label: "{% if event_3._in_query %}
    {{_filters['event_action_funnel.event_3']}}
    {% else %}
    Count of Event 3
    {% endif %}"
    description: "Count of Event 3 to be used with Event 3 filter, if no filter is selected it shows all events"
  }

  measure: count_of_event_4 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event4_session_id_tagged} ;;
    label: "{% if event_4._in_query %}
    {{_filters['event_action_funnel.event_4']}}
    {% else %}
    Count of Event 4
    {% endif %}"
    description: "Count of Event 4 to be used with Event 4 filter, if no filter is selected it shows all events"
  }

  measure: count_of_event_5 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event5_session_id_tagged} ;;
    label: "{% if event_5._in_query %}
    {{_filters['event_action_funnel.event_5']}}
    {% else %}
    Count of Event 5
    {% endif %}"
    description: "Count of Event 5 to be used with Event 5 filter, if no filter is selected it shows all events"
  }

  measure: count_of_event_6 {
    type: count_distinct
    allow_approximate_optimization: yes
    sql: ${event6_session_id_tagged} ;;
    label: "{% if event_6._in_query %}
    {{_filters['event_action_funnel.event_6']}}
    {% else %}
    Count of Event 6
    {% endif %}"
    description: "Count of Event 6 to be used with Event 6 filter, if no filter is selected it shows all events"
  }


}
