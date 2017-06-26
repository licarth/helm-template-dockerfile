FROM soxhub/helm

RUN helm init --client-only
RUN wget -qO helm-template.tar.gz https://github.com/technosophos/helm-template/releases/download/2.4.1%2B2/helm-template-linux-2.4.1.2.tgz
RUN mkdir -p /root/.helm/plugins/template/
RUN tar -xzf helm-template.tar.gz -C /root/.helm/plugins/template/

WORKDIR /workdir/

ENTRYPOINT ["/bin/helm"]

