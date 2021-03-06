#############################################################################################################
# Purpose: Defines the fields within the `customvariables` struct in google analytics. Is joined to the ga_sessions explore
#          by unnesting the values.
#############################################################################################################

view: custom_variables {
  view_label: "Custom Dimensions"

  ########## DIMENSIONS ##########
  dimension: custom_var_name {
    group_label: "Custom Variables"
    label: "Custom Variable (Key XX)"
    description: "The name for the requested custom variable."
    type: string
    sql: ${TABLE}.customvarname ;;
  }

  dimension: custom_var_value {
    group_label: "Custom Variables"
    label: "Custom Variable (Value XX)"
    description: "The value for the requested custom variable."
    type: string
    sql: ${TABLE}.customvarvalue ;;
  }

  dimension: index {
    description: "The index number associated to the custom variable"
    type: number
    sql: ${TABLE}.index ;;
  }

}
