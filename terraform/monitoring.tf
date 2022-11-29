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

resource "datadog_monitor" "available-servers" {
  name    = "Server doesn't respond"
  type    = "service check"
  query   = "\"datadog.agent.up\".over(\"*\").by(\"host\").last(2).count_by_status()"
  message = "Host {{host.name}} with IP {{host.ip}} is down."
  tags = [
    "datadog",
    "unreachable"
  ]
  monitor_thresholds {
    critical = 1
    warning  = 1
    ok       = 1
  }
  notify_audit      = false
  notify_no_data    = true
  no_data_timeframe = 2
  renotify_interval = 0
  timeout_h         = 0
  include_tags      = true
  new_group_delay   = 60
  priority          = 2
}
