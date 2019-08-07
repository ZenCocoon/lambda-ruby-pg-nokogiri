FROM lambci/lambda:build-ruby2.5

RUN echo "[pgdg10]" > "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN echo "name=PostgreSQL 10 $releasever - $basearch" >> "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN echo "baseurl=https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-6.9-x86_64" >> "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN echo "enabled=1" >> "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN echo "gpgcheck=0" >> "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN echo "gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-PGDG-10" >> "/etc/yum.repos.d/pgdg-10-redhat.repo"

RUN sed -i "s/rhel-\$releasever-\$basearch/rhel-6.9-x86_64/g" "/etc/yum.repos.d/pgdg-10-redhat.repo"
RUN yum install -y postgresql10-devel

RUN gem update bundler

CMD "/bin/bash"
