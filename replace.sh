#!/usr/bin/env bash


sed -i 's|https://service.pdok.nl/hwh/hydrografie/atom/v1_0/|https://pdok.github.io/ngr-atom-test/|g' *.xml
sed -i 's|https://www.nationaalgeoregister.nl/geonetwork|https://ngr-2020-acc.geocat.live/geonetwork|g' *.xml

# https://www.nationaalgeoregister.nl/geonetwork/opensearch/dut/15c3c30f-0db2-4b3b-80f6-b990c8fc8225/OpenSearchDescription.xml
# https://ngr-2020-acc.geocat.live/geonetwork/opensearch/dut/15c3c30f-0db2-4b3b-80f6-b990c8fc8225/OpenSearchDescription.xml
