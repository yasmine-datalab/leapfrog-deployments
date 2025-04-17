
helm upgrade --install keycloak bitnami/keycloak \
 --set auth.adminPassword=$KEYCLOAK_ADMIN_PASSWORD \
  --set global.postgresql.auth.password=$KEYCLOAK_DATABASE_PASSWORD \
   --set postgresql.postgresqlPassword=$KEYCLOAK_DATABASE_PASSWORD -f keycloak.yaml -n production  \
    --version 22.0.0 \
     --debug