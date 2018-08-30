FROM hashicorp/terraform:light

RUN wget https://github.com/mcuadros/terraform-provider-helm/releases/download/v0.5.1/terraform-provider-helm_v0.5.1_linux_amd64.tar.gz \
  && tar -xvf terraform-provider-helm*.tar.gz \
  && mkdir -p ~/.terraform.d/plugins \
  && mv terraform-provider-helm*/terraform-provider-helm ~/.terraform.d/plugins/
