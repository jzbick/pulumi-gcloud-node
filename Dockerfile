FROM node:20.17.0

RUN apt update && apt install -y \
    curl

# Add pulumi
RUN curl -fsSL https://get.pulumi.com/ | sh
# Add gcloud
RUN curl -fsSL https://sdk.cloud.google.com | bash
# Add both to path
ENV PATH=$PATH:/root/.pulumi/bin:/usr/local/gcloud/google-cloud-sdk/bin

WORKDIR /app
CMD ["sh"]
