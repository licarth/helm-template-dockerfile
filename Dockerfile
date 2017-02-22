FROM soxhub/helm

RUN helm init --client-only
RUN wget -qO helm-template.tar.gz https://github.com/technosophos/helm-template/releases/download/2.1.3%2B1/helm-template-linux.tgz
RUN mkdir -p /root/.helm/plugins/template/
RUN tar -xzf helm-template.tar.gz -C /root/.helm/plugins/template/

ENTRYPOINT ["/bin/helm"]
