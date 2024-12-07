# gunicorn.conf.py

# Server socket settings
bind = "0.0.0.0:8000"
backlog = 2048

# Worker processes
workers = 1  # Reduce workers for debugging
worker_class = "sync"
worker_connections = 1000
timeout = 120
keepalive = 2

# Logging
accesslog = "-"
errorlog = "-"
loglevel = "debug"  # Change to debug level
capture_output = True
enable_stdio_inheritance = True

# Process naming
proc_name = "katana-nbi"

# Debug settings
reload = True
reload_extra_files = [
    'katana/app.py',
]

# Prevent worker timeouts during debug
graceful_timeout = 120
timeout = 120