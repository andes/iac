# image: andesnqn/oviyam

FROM openmedicus/oviyam:2.7.1

# Agrega el cert de keycloak al store de java
COPY load-hook.sh /
COPY entrypoint.sh /
RUN chmod +x /load-hook.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]


