resource "datadog_dashboard" "ordered_dashboard" {
  title       = "Ordered Layout Dashboard"
  layout_type = "ordered"

  widget {
    alert_graph_definition {
      alert_id  = "895605"
      viz_type  = "timeseries"
      title     = "Alert graph"
      live_span = "30m"
    }
  }
}

resource "datadog_monitor" "healthy-servers" {
  name    = "healthy-servers"
  type    = "metric alert"
  message = "Check [datadog](https://us5.datadoghq.com/monitors)\nto see what's goin on.\nSome servers are not healthy."
  query   = "avg(last_5m):avg:system.load.1{*} by {host} > 4"
  monitor_thresholds {
    critical = 4
    warning  = 2
  }

  notify_audit        = false
  notify_no_data      = true
  require_full_window = false
  renotify_interval   = 0
  no_data_timeframe   = 10
  priority            = 3

  include_tags = true
  tags         = ["datadog", "monitoring"]
}
