## CouchApp Tool

This is a basic python-based image with the [CouchApp](https://github.com/couchapp/couchapp) tool for loading scripts into [CouchDB](https://couchdb.apache.org/).  


### Tags

Latest Repast Simphony:
* `latest`

### Usage

This image assumes the scripts to load in the CouchDB instance are in a host folder that is mapped to the container. By default it tries to run a ./setup-kb.sh script in the "kbscripts" subfolder of the mapped host folder.

For running:

    docker run --name my-couchapp --link my-couchdb:couch -v /host_folder_to_map/:/couchapp -e KB_URL=172.17.0.3 -it mperhez/couchapp:latest

*Replace KB_URL with the URL of the couchdb instance. Note a container called "my-couchdb" is linked, this should be running and contains the couchdb instance. See [CouchDB containers](https://hub.docker.com/_/couchdb/).

