 oc new-project innovation-2020
 1073  oc new-app gitlab/gitlab-ce
 1074  oc new-app prom/prometheus:latest
 1075  --name pg_prometheus      -e POSTGRES_PASSWORD=secret -d -p 5432:5432 timescale/pg_prometheus:latest-pg11 postgres      -c synchronous_commit=off
 1076  oc new-app timescale/pg_prometheus:latest-pg11 postgres
 1077  oc expose svc/pgprometheus
 1078  oc expose svc/prometheus
 1079  oc new-app timescale/prometheus-postgresql-adapter:latest prometheus_postgresql_adapter
 1080  oc new-app timescale/prometheus-postgresql-adapter:latest
 1081  oc status
 1082  oc status
 1083  oc status --suggest
 1084  oc get pods
 1085  oc get pods
 1086  oc deploy gitlab-ce --latest
 1087  oc export all --as-template=gitlab --selector='app=gitlab-ce'
 1088  oc export all --as-template=gitlab --selector='app=gitlab-ce' >> temp.txt
 1089  ll
 1090  cat temp.txt
 1091  oc policy add-role-to-user system:image-puller system:serviceaccount:timescaledb:default -n prom-tsdb-demo
 1092  oadm policy add-scc-to-user anyuid -z default
 1093  oc get scc
 1094  oc edit scc restricted
 1095  oc edit scc anyuid

