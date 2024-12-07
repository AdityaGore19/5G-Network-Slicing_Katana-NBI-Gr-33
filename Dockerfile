FROM python:3.7.4-slim

# Install system dependencies
RUN apt-get update && apt-get install -qq -y \
    build-essential \
    libpq-dev \
    curl \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Set working directory  
WORKDIR /katana-nbi

ENV KATANA_DEV_MODE=1
# Create config directory and copy config files
RUN mkdir -p /katana-nbi/config/targets
COPY config/wim_targets.json /katana-nbi/config/targets/
COPY config/vim_targets.json /katana-nbi/config/targets/

# Copy requirements first for better caching
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Create instance directory
RUN mkdir -p instance

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8000/ || exit 1

# Command to run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "1", "--timeout", "120", "katana.app:create_app()"]