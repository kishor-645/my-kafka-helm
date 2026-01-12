### Helm Command to Deploy

Since you want to deploy multiple times with overrides, use the following:

**Deploy Instance 1 (gai-kafka):**
```bash
helm upgrade --install gai-kafka ./my-kafka \
  --set replicaCount=3 \
  --set storage.size=5Gi \
  --set storage.storageClass="longhorn"
  --set clusterId="MkU3OEVBNTcwNTJENDM2Qk"
```

**Deploy Instance 2 (test-kafka) on same cluster:**
```bash
helm upgrade --install test-kafka ./my-kafka \
  --set replicaCount=1 \
  --set storage.size=1Gi \
  --set storage.storageClass="longhorn"
  --set clusterId="TEST7OEVBNTcwNTJENDM2BB"
```