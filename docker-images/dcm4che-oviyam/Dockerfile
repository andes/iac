FROM openmedicus/oviyam:2.7.1

# Agrega el cert de keycloak al store de java
COPY load-hook.sh /
COPY entrypoint.sh /


ENTRYPOINT ["/load-hook.sh"]
CMD ["/entrypoint.sh"]


