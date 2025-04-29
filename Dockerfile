
FROM ghcr.io/dbt-labs/dbt-postgres:1.7.0

WORKDIR /usr/app/dbt

# Copy only what's needed for dependencies first
COPY dbt_project.yml packages.yml .

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install dbt packages
COPY packages.yml .
RUN dbt deps

# Copy project files
COPY . .


ENTRYPOINT ["dbt"]