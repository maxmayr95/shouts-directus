FROM directus/directus:11

EXPOSE 8055

COPY --chown=root:root create-admin-user.sh /usr/local/bin/create-admin-user.sh

USER root
RUN chmod +x /usr/local/bin/create-admin-user.sh
USER node  # or any other non-root user that the image uses

CMD ["sh", "-c", "directus start & /usr/local/bin/create-admin-user.sh && wait"]
