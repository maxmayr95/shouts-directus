FROM directus/directus:11

EXPOSE 8055

COPY create-admin-user.sh /usr/local/bin/create-admin-user.sh

RUN chmod +x /usr/local/bin/create-admin-user.sh

CMD ["sh", "-c", "directus start & /usr/local/bin/create-admin-user.sh && wait"]
