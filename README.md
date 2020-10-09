# ngr-atom-test

This repository contains an example implementation of an INSPIRE Atom download service and the associated metadata, to test the OpenSearch implementation on NGR. This repo contains:

- [ATOM service feed](https://pdok.github.io/ngr-atom-test/index.xml)
- [ATOM dataset feed](https://pdok.github.io/ngr-atom-test/hydrografie.xml)
- [service metadata](https://ngr-2020-acc.geocat.live/geonetwork/srv/dut/csw?service=CSW&version=2.0.2&request=GetRecordById&outputschema=http://www.isotc211.org/2005/gmd&elementsetname=full&id=15c3c30f-0db2-4b3b-80f6-b990c8fc8225) (also available in [repo](metadata/15c3c30f-0db2-4b3b-80f6-b990c8fc8225.xml) in case metadata in catalog changes)
- [dataset metadata](https://ngr-2020-acc.geocat.live/geonetwork/srv/dut/csw?service=CSW&version=2.0.2&request=GetRecordById&outputschema=http://www.isotc211.org/2005/gmd&elementsetname=full&id=07575774-57a1-4419-bab4-6c88fdeb02b2) (also available in [repo](metadata/07575774-57a1-4419-bab4-6c88fdeb02b2.xml) in case metadata in catalog changes)

For now this implementation uses the [release-acceptance environment](https://ngr-2020-acc.geocat.live/geonetwork) of NGR, since this new release fixes a couple of issues in the INSPIRE Atom harvesting/indexing done by NGR.

## Requirements ATOM service harvesting 

For a INSPIRE Atom service to be correctly harvested by NGR it needs to meet 3 requirements:

- service metadata points to service feed URL with protocol "INSPIRE Atom"
- service metadata operatesOn@uuidref points to innertext of the identifier element of the dataset metadata record
- the dataset points to the dataset atomfeed url with protocol "INSPIRE Atom"

![relationships between ATOM service and metadata](images/relationships.JPG)


## Open Search URLS

OpenSearchDescription:
- https://ngr-2020-acc.geocat.live/geonetwork/opensearch/dut/15c3c30f-0db2-4b3b-80f6-b990c8fc8225/OpenSearchDescription.xml"

### Parametrized OpenSearch URLS

search: 
- https://ngr-2020-acc.geocat.live/geonetwork/opensearch/dut/describe?spatial_dataset_identifier_code=07575774-57a1-4419-bab4-6c88fdeb02b2&spatial_dataset_identifier_namespace=https://www.hetwaterschapshuis.nl&language=nl

download:
- https://ngr-2020-acc.geocat.live/geonetwork/opensearch/dut/download?spatial_dataset_identifier_code=07575774-57a1-4419-bab4-6c88fdeb02b2&spatial_dataset_identifier_namespace=https://www.hetwaterschapshuis.nl&language=nl&crs=http://www.opengis.net/def/crs/EPSG/0/4258
