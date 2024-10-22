# Use the official Directus v11 image
FROM directus/directus:11

# Expose the necessary port for Directus
EXPOSE 8055


# Copy the admin user creation script into the container
COPY create-admin-user.sh /usr/local/bin/create-admin-user.sh

# Give the script executable permissions
RUN chmod +x /usr/local/bin/create-admin-user.sh

# Run the Directus server and the admin user creation script
CMD ["sh", "-c", "directus start & /usr/local/bin/create-admin-user.sh && wait"]
