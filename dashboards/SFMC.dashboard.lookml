- dashboard: salesforce_marketing_cloud_email_broadcast_performance
  title: Salesforce Marketing Cloud Email Broadcast Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Hy4hV1CVhFVrD8sBX8q2sy

  elements:
## Performance Summary Sent, Bounces, Delivery Rate
  - title: Sent
    name: Sent
    explore: job_agg
    type: single_value
    fields: [job_agg.sum_of_sent_email]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sent
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Total number of emails sent.
    title_hidden: true
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 2
    col: 0
    width: 8
    height: 2

  - title: Bounces
    name: Bounces
    explore: job_agg
    type: single_value
    fields: [job_agg.sum_of_bounced_email]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Bounces
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Total number of emails that were rejected by the mail server.'
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 2
    col: 8
    width: 8
    height: 2

  - title: Delivery Rate
    name: Delivery Rate
    explore: job_agg
    type: single_value
    fields: [job_agg.delivery_rate]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Delivery Rate
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Percentage of successfully delivered emails in relation to total emails sent.'
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 2
    col: 16
    width: 8
    height: 2

## Performance Summary: Opened Emails, Open Rate, Clicks, CTR
  - title: Opened Emails
    name: Opened Emails
    explore: job_agg
    type: single_value
    fields: [job_agg.sum_of_open_email]
    # limit: 500
    # column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Opened Emails
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Total number of recipients who opened the email.'
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 4
    col: 0
    width: 7
    height: 2

  - title: Open Rate
    name: Open Rate
    explore: job_agg
    type: single_value
    fields: [job_agg.open_rate]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Open Rate
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Percentage of recipients who opened the email.
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 4
    col: 7
    width: 6
    height: 2

  - title: Clicks
    name: Clicks
    explore: job_agg
    type: single_value
    fields: [job_agg.sum_of_email_click]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Clicks
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'The total number of times recipients clicked through any link in the email.'
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 4
    col: 13
    width: 6
    height: 2

  - title: CTR
    name: CTR
    explore: job_agg
    type: single_value
    fields: [job_agg.ctr]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: 'Percentage of clicks from an email in relation to how many emails were delivered.'
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 4
    col: 19
    width: 5
    height: 2

## Monthly Overview
  - title: Monthly Overview
    name: Monthly Overview
    explore: job_agg
    type: looker_column
    fields: [job_agg.sum_of_delivered_email, job_agg.sum_of_unique_open, job_agg.sched_month,
      job_agg.open_rate]
    fill_fields: [job_agg.sched_month]
    sorts: [job_agg.sched_month]
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
    stacking: normal
    limit_displayed_rows: false
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
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: job_agg.sum_of_delivered_email,
            id: job_agg.sum_of_delivered_email, name: Delivered}, {axisId: job_agg.sum_of_unique_open,
            id: job_agg.sum_of_unique_open, name: Unique Opened Email}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: job_agg.ctr,
            id: job_agg.ctr, name: Ctr}, {axisId: job_agg.open_rate, id: job_agg.open_rate,
            name: Open Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      job_agg.open_rate: line
    series_colors:
      job_agg.ctr: "#e8605d"
      job_agg.sum_of_delivered_email: "#c0edc1"
      job_agg.open_rate: "#a918b4"
      job_agg.sum_of_unique_open: "#aadde8"
    series_labels:
      job_agg.sum_of_delivered_email: Delivered
      job_agg.sum_of_unique_open: Unique Opened Emails
      job_agg.ctr: CTR
    x_axis_datetime_label: "%b %y"
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
            dataLabels: {
              enabled: false,
            },
            events: {},
            id: 'job_agg.sum_of_delivered_email',

          },
          {
            dataLabels: {
              enabled: false,
            },
            events: {},
            id: 'job_agg.sum_of_unique_open',

          },
        ],
      }
    defaults_version: 1
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 6
    col: 0
    width: 24
    height: 8

## Email Broadcast Performance Overview
  - title: Email Broadcast Performance Overview
    name: Email Broadcast Performance Overview
    explore: job_agg
    type: looker_column
    fields: [job_agg.sum_of_delivered_email, job_agg.sum_of_unique_open, job_agg.ctr,
      job_agg.open_rate, job_agg.email_broadcast]
    sorts: [job_agg.sum_of_delivered_email desc 0]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application: undefined
    y_axes: [{label: '', orientation: left, series: [{axisId: job_agg.sum_of_delivered_email,
            id: job_agg.sum_of_delivered_email, name: Delivered}, {axisId: job_agg.sum_of_unique_open,
            id: job_agg.sum_of_unique_open, name: Unique Opened Email}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: job_agg.ctr,
            id: job_agg.ctr, name: CTR}, {axisId: job_agg.open_rate, id: job_agg.open_rate,
            name: Open Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      job_agg.ctr: line
      job_agg.open_rate: line
    series_colors:
      job_agg.ctr: "#cf6408"
      job_agg.sum_of_delivered_email: "#c0edc1"
      job_agg.open_rate: "#a918b4"
      job_agg.sum_of_unique_open: "#aadde8"
    series_labels:
      job_agg.sum_of_delivered_email: Delivered
      job_agg.sum_of_unique_open: Unique Opened Emails
      job_agg.ctr: CTR
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 16
    col: 0
    width: 24
    height: 9

## Email Broadcast Opened vs Clicked
  - title: Email Broadcast Opened vs Clicked
    name: Email Broadcast Opened vs Clicked
    explore: job_agg
    type: looker_bar
    fields: [job_agg.sum_of_unique_open, job_agg.sum_of_email_click, job_agg.email_broadcast]
    sorts: [job_agg.sum_of_unique_open desc 0]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: job_agg.sum_of_unique_open,
            id: job_agg.sum_of_unique_open, name: Unique Opens Email}], showLabels: true,
        showValues: true, minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 0, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: job_agg.sum_of_email_click, id: job_agg.sum_of_email_click,
            name: Email Clicks}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      job_agg.sum_of_email_click: "#438feb"
      job_agg.sum_of_unique_open: "#aadde8"
    series_labels:
      job_agg.sum_of_email_click: Email Clicks
      job_agg.sum_of_unique_open: Unique Opened Emails
    defaults_version: 1
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 25
    col: 0
    width: 24
    height: 9

## Open Rate vs Click Through Rate
  - title: Open Rate vs Click Through Rate
    name: Open Rate vs Click Through Rate
    explore: job_agg
    type: looker_column
    fields: [job_agg.ctr, job_agg.sched_week, job_agg.open_rate]
    sorts: [job_agg.sched_week]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    x_axis_label: Week Start Date
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      job_agg.ctr: line
      job_agg.open_rate: line
    series_colors:
      job_agg.ctr: "#cf6408"
      job_agg.open_rate: "#a918b4"
    series_labels:
      job_agg.ctr: CTR
    x_axis_datetime_label: week %U, %y
    defaults_version: 1
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 34
    col: 0
    width: 24
    height: 8

## Bounce Rate and Unsubscribe Rate
  - title: Bounce Rate
    name: Bounce Rate
    explore: job_agg
    type: looker_bar
    fields: [job_agg.bounce_rate, job_agg.email_broadcast]
    sorts: [job_agg.bounce_rate desc 0]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      job_agg.bounce_rate: "#e4d5ed"
    defaults_version: 1
    show_null_points: true
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 44
    col: 0
    width: 13
    height: 9

  - title: Unsubscribe Rate
    name: Unsubscribe Rate
    explore: job_agg
    type: looker_column
    fields: [job_agg.unsubscribe_rate, job_agg.sched_month]
    fill_fields: [job_agg.sched_month]
    sorts: [job_agg.unsubscribe_rate desc 0]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    x_axis_label: Month
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      job_agg.unsubscribe_rate: "#e8e787"
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 44
    col: 13
    width: 11
    height: 9

## Email Broadcast Performance Details
  - title: Email Broadcast Performance Details
    name: Email Broadcast Performance Details
    explore: job_agg
    type: looker_grid
    fields: [job_agg.sum_of_sent_email, job_agg.sum_of_delivered_email, job_agg.sum_of_unique_open,
      job_agg.sum_of_email_click, job_agg.bounce_rate, job_agg.unsubscribe_rate, job_agg.email_broadcast,
      job_agg.ctr]
    sorts: [job_agg.sum_of_sent_email desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", job_agg.email_broadcast, job_agg.sum_of_sent_email,
      job_agg.sum_of_delivered_email, job_agg.sum_of_unique_open, job_agg.sum_of_email_click,
      job_agg.ctr, job_agg.bounce_rate, job_agg.unsubscribe_rate]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      job_agg.ctr: CTR
      job_agg.sum_of_delivered_email: Delivered
      job_agg.sum_of_email_click: Clicks
      job_agg.sum_of_sent_email: Sent
      job_agg.sum_of_unique_open: Opened
    series_column_widths:
      job_agg.email_broadcast: 211
    series_cell_visualizations:
      job_agg.Bounce_Rate:
        is_active: true
        palette:
          palette_id: b79a675d-1a04-30bc-d4c7-90f2f68ea476
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#2fb233"
          - "#bf313f"
      job_agg.Unsubscribe_Rate:
        is_active: true
        palette:
          palette_id: 428e4084-c558-35b6-3c05-e37709fba9e1
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#2fb233"
          - "#bf313f"
      job_agg.CTR:
        is_active: true
        palette:
          palette_id: 9d81751a-28cd-9c1b-8253-dc6e6d3c398f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#bf313f"
          - "#2fb233"
      job_agg.bounce_rate:
        is_active: false
        palette:
          palette_id: 387eb97b-8da5-ad38-78e6-419a5aff4b5f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#52d145"
          - "#fb8c78"
      job_agg.unsubscribe_rate:
        is_active: false
        palette:
          palette_id: 99426e74-d5c9-4082-070e-c8978dc84ebe
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#3e9e34"
          - "#b21f1f"
      job_agg.ctr:
        is_active: false
        palette:
          palette_id: 0a11bac0-ba34-e4e3-1133-47426e2b998a
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b21f1f"
          - "#3e9e34"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          custom: {id: 6dcfd653-8b85-154d-ee11-5810044054c3, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#a7d19b", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [job_agg.ctr]}, {type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          custom: {id: ffe934f4-057f-2d6f-e7cc-623af9b9c436, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#f08f83", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [job_agg.bounce_rate]}, {type: along a scale..., value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          custom: {id: 698d1967-5e32-a5db-8574-2d65672eb178, label: Custom, type: continuous,
            stops: [{color: "#FFFFFF", offset: 0}, {color: "#f08f83", offset: 100}]},
          options: {steps: 5}}, bold: false, italic: false, strikethrough: false,
        fields: [job_agg.unsubscribe_rate]}]
    defaults_version: 1
    listen:
      Email Broadcast: job_agg.email_broadcast
      Broadcast Date: job_agg.sched_date
    row: 53
    col: 0
    width: 24
    height: 9

## Section Header Performance Summary
  - name: section_PerformanceSummary_line_left
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 7
    height: 2

  - name: section_PerformanceSummary_title
    type: text
    title_text: "<h2><strong> Performance Summary"
    subtitle_text: What was the high level performance of my email broadcasts?
    body_text: ''
    row: 0
    col: 7
    width: 11
    height: 2

  - name: section_PerformanceSummary_line_right
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 18
    width: 6
    height: 2


## Section Header Opened Rate & Click Through Rate
  - name: section_OpenedRate_title
    type: text
    title_text: "<h3><strong>What was the relationship between opened email rate and\
      \ click through rate?"
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 5
    width: 14
    height: 2

  - name: section_OpenedRate_line_left
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 0
    width: 5
    height: 2

  - name: section_OpenedRate_line_right
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 19
    width: 5
    height: 2

## Section Header Bounce & Unsubscribe
  - name: section_BounceUnsubscribe_title
    type: text
    title_text: "<h3><strong>What was the bounce and unsubscribe rate by campaign\
      \ and by month?"
    subtitle_text: ''
    body_text: ''
    row: 42
    col: 5
    width: 14
    height: 2

  - name: section_BounceUnsubscribe_line_left
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 42
    col: 0
    width: 5
    height: 2

  - name: section_BounceUnsubscribe_line_right
    type: text
    title_text: <p style="color:grey;">-------------------------------------------------------------------------------------------------------------</p>
      </body>
    subtitle_text: ''
    body_text: ''
    row: 42
    col: 19
    width: 5
    height: 2

## filters
  filters:
  - name: Email Broadcast
    title: Email Broadcast
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    explore: job_agg
    listens_to_filters: []
    field: job_agg.email_broadcast

  - name: Broadcast Date
    title: Broadcast Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    explore: job_agg
    listens_to_filters: []
    field: job_agg.sched_date
