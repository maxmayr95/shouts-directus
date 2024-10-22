#!/bin/bash

# Check if an admin user already exists by querying users
EXISTING_ADMIN=$(npx directus users list --query='{"filter":{"role":{"_eq":"admin"}}}' --limit 1)

if [ -z "$EXISTING_ADMIN" ]; then
  echo "Creating admin user..."
  npx directus users create \
    --email info@shouts.ch \
    --password Test1234 \
    --role admin \
    --status active \
    --first-name Admin \
    --last-name User
  echo "Admin user created."
else
  echo "Admin user already exists."
fi

