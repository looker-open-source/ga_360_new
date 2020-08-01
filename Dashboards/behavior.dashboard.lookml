- dashboard: behavior
  title: Behavior
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Landing Page Detail
    name: Landing Page Detail
    model: marketing
    explore: ga_sessions
    type: table
    fields: [ga_sessions.landing_page_formatted, ga_sessions.visits_total, ga_sessions.transaction_revenue_total,
      ga_sessions.transaction_conversion_rate, ga_sessions.bounce_rate, ga_sessions.percent_new_sessions,
      ga_sessions.timeonsite_average_per_session, ga_sessions.page_views_session]
    filters:
      ga_sessions.landing_page_hostname: ''
    sorts: [ga_sessions.visits_total desc]
    limit: 500
    column_limit: 50
    row_total: right
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: 81c3d7d1-e9ca-4b9f-7eda-f22d4709dfa0, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#EA4335", offset: 50},
              {color: "#B31412", offset: 100}]}, options: {steps: 5, reverse: false,
            constraints: {max: {type: percentile, value: 99}, min: {type: percentile,
                value: 10}}}}, bold: false, italic: false, strikethrough: false, fields: [
          ga_sessions.bounce_rate]}, {type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: 620e533c-0510-b56a-549b-04671fa7fc9c, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#34A853", offset: 50},
              {color: "#137333", offset: 100}]}, options: {steps: 5, constraints: {
              max: {type: percentile, value: 99}}}}, bold: false, italic: false, strikethrough: false,
        fields: [ga_sessions.transaction_revenue_total]}, {type: along a scale...,
        value: !!null '', background_color: !!null '', font_color: !!null '', color_application: {
          collection_id: google, custom: {id: c5d6b90e-67ed-69c9-ebce-4493aff73847,
            label: Custom, type: continuous, stops: [{color: "#ffffff", offset: 0},
              {color: "#34A853", offset: 50}, {color: "#137333", offset: 100}]}, options: {
            steps: 5, constraints: {max: {type: percentile, value: 99}}}}, bold: false,
        italic: false, strikethrough: false, fields: [ga_sessions.transaction_conversion_rate]},
      {type: along a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, constraints: {max: {type: percentile, value: 99}, min: {
                type: percentile, value: 1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [ga_sessions.percent_new_sessions]}, {type: along a scale..., value: !!null '',
        background_color: !!null '', font_color: !!null '', color_application: {collection_id: google,
          palette_id: google-sequential-0, options: {steps: 5, constraints: {max: {
                type: percentile, value: 99}, min: {type: percentile, value: 1}}}},
        bold: false, italic: false, strikethrough: false, fields: [ga_sessions.timeonsite_average_per_session]},
      {type: along a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: google, palette_id: google-sequential-0,
          options: {steps: 5, constraints: {max: {type: percentile, value: 99}}}},
        bold: false, italic: false, strikethrough: false, fields: [ga_sessions.page_views_session]}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      ga_sessions.landing_page_formatted: 325
    series_cell_visualizations:
      ga_sessions.visits_total:
        is_active: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: ga_sessions.visits_total,
            id: ga_sessions.visits_total, name: Sessions}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}, {label: '', orientation: bottom,
        series: [{axisId: ga_sessions.transaction_conversion_rate, id: ga_sessions.transaction_conversion_rate,
            name: Transaction Conversion Rate}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}, {label: !!null '',
        orientation: bottom, series: [{axisId: of_total_sessions, id: of_total_sessions,
            name: "% of Total Sessions"}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: ''
    hidden_series: [ga_sessions.percent_new_sessions, ga_sessions.visits_total]
    font_size: '14'
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: monotone
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: |-
      Channel groups are default, as defined by Google
      https://support.google.com/analytics/answer/3297892?hl=en
    defaults_version: 1
    listen:
      Date: ga_sessions.partition_date
    row: 16
    col: 0
    width: 24
    height: 12
  - title: Top Pages
    name: Top Pages
    model: marketing
    explore: ga_sessions
    type: looker_grid
    fields: [hits.page_path, ga_sessions.page_views_total, hits.unique_page_count,
      hits.entrance_rate, hits.exit_rate]
    filters: {}
    sorts: [ga_sessions.page_views_total desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ga_sessions.page_views_total:
        is_active: true
      hits.unique_page_count:
        is_active: true
      hits.entrance_rate:
        is_active: true
      hits.exit_rate:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    header_font_color: "#fcffff"
    header_background_color: "#EA4335"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: []}]
    truncate_column_names: false
    subtotals_at_bottom: false
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    series_types: {}
    listen:
      Date: ga_sessions.partition_date
    row: 5
    col: 10
    width: 14
    height: 11
  - title: Page Views
    name: Page Views
    model: marketing
    explore: ga_sessions
    type: single_value
    fields: [hits.page_count, hits.unique_page_count]
    filters:
      ga_sessions.partition_date: 1500 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    value_format: ''
    comparison_label: Unique Pageviews
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#B31412",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: expanded
    note_display: hover
    note_text: ''
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    row: 2
    col: 0
    width: 24
    height: 3
  - title: Top Pages
    name: Top Pages (2)
    model: marketing
    explore: ga_sessions
    type: looker_bar
    fields: [hits.page_count, hits.unique_page_count, hits.page_path_formatted]
    filters:
      ga_sessions.partition_date: 1500 days
    sorts: [hits.page_count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hits.page_count, id: hits.page_count,
            name: Page Views}, {axisId: hits.unique_page_count, id: hits.unique_page_count,
            name: Unique Page Views}], showLabels: true, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_value_format: ''
    series_types:
      hits.unique_page_count: scatter
    series_colors:
      hits.page_count: "#B31412"
      hits.unique_page_count: "#BDC1C6"
    series_labels:
      hits.page_count: Page Views
      hits.unique_page_count: Unique Page Views
    label_color: ["#B31412", transparent]
    custom_color_enabled: true
    custom_color: "#ffffff"
    show_single_value_title: true
    value_format: 0.0,,"M"
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Unique Pageviews
    enable_conditional_formatting: true
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#B31412",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    note_state: expanded
    note_display: hover
    note_text: ''
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    row: 5
    col: 0
    width: 10
    height: 11
  - title: Avg Time on Page
    name: Avg Time on Page
    model: marketing
    explore: ga_sessions
    type: single_value
    fields: [time_on_page.average_time_on_page]
    filters:
      ga_sessions.partition_date: 1500 days
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    row: 28
    col: 0
    width: 12
    height: 3
  - title: Avg Time on Top Pages
    name: Avg Time on Top Pages
    model: marketing
    explore: ga_sessions
    type: looker_bar
    fields: [hits.page_count, time_on_page.average_time_on_page, hits.page_path_formatted]
    filters:
      ga_sessions.partition_date: 1500 days
    sorts: [hits.page_count desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    font_size: '16'
    series_types: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: left,
        color: "#000000", label: Avg}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffffff"
    value_format: ''
    comparison_label: Unique Pageviews
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#4285F4",
        font_color: "#ffffff", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_fields: [hits.page_count]
    note_state: expanded
    note_display: hover
    note_text: ''
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    row: 31
    col: 0
    width: 12
    height: 10
  - title: Navigation Bar
    name: Navigation Bar
    model: marketing
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.dash_nav]
    filters:
      ga_sessions.partition_date: 1500 days
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Date
    title: Date Range
    type: field_filter
    default_value: 1500 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: marketing
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.partition_date
  - name: Host name
    title: Host name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - hostname
      - " head"
      - tet
    model: marketing
    explore: ga_sessions
    listens_to_filters: []
    field: hits.host_name