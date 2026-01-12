### Helm Command to Deploy

Since you want to deploy multiple times with overrides, use the following:

**Deploy Instance 1 (gai-kafka):**
```bash
helm upgrade --install gai-kafka ./my-kafka \
  --set replicaCount=3 \
  --set storage.size=5Gi \
  --set storage.storageClass="longhorn" \
  --set clusterId="MkU3OEVBNTcwNTJENDM2Qk"
```

**Deploy Instance 2 (test-kafka) on same cluster:**
```bash
helm upgrade --install test-kafka ./my-kafka \
  --set replicaCount=1 \
  --set storage.size=1Gi \
  --set storage.storageClass="longhorn" \
  --set clusterId="TEST7OEVBNTcwNTJENDM2BB"
```
```bash
helm upgrade --install k1 ./my-kafka -n k1 --create-namespace \
  --set image.registry="docker.io" \
  --set image.repository="apache/kafka" \
  --set image.tag="4.1.1" \
  --set kafka.replicas=3 \
  --set kafka.storage.size=20Gi \
  --set kafka.storage.className=longhorn \
  --set kafka.replication.offsetsTopicReplicationFactor=3 \
  --set kafka.replication.minInSyncReplicas=2 \
  --set kafka.resources.requests.cpu=500m \
  --set kafka.resources.requests.memory=1Gi \
  --set kafka.resources.limits.cpu=1000m \
  --set kafka.resources.limits.memory=2Gi
```