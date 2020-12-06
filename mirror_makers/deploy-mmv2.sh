docker service rm kafka_source_mmv2
docker config rm kafka_source_mm2.properties
docker service rm kafka_target_mmv2
docker config rm kafka_target_mm2.properties
sleep 3s
docker stack deploy -c source_mmv2.yaml kafka
docker stack deploy -c target_mmv2.yaml kafka
