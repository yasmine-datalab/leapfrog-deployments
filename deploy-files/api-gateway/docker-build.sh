# Build the container with any new changes
docker build -t tacilentregistry.azurecr.io/gateway/kong-oidc:3.9 -f Dockerfile . 

# Run the container in detached mode
docker run -d --name kong-oidc tacilentregistry.azurecr.io/gateway/kong-oidc:3.9    

# Pushing the container image to a registry
docker push tacilentregistry.azurecr.io/gateway/kong-oidc:3.9