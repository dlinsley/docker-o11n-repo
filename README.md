# docker-o11n-repo
Need access to the vco-repo Maven repository for vRealize Orchestrator plugin and package / building and testing?

Instead of spinning up a vRO VM, this Dockerfile builds a nginx based container that will host the contents of the /vco-repo repository.

This GIT repository does not contain the Maven repository for vRO libraries.

    #Get the Maven repository from your vRO Appliance
    scp -r root@vrohost.corp.local:/usr/lib/vco/downloads/vco-repo .
    chmod -R a+x vco-repo

    #Build a version of the Container Image
    docker build -t o11n-repo:<version> .

    #Run a Container instance for a particular vRO version
    docker run -d -p 7600:8080 o11n-repo:<version>
    
The Maven repo will then be available at http://localhost:7600/vco-repo/
    
Replace *\<version\>* with the version of vRO you are creating the docker image for.  Ex: 7.1, 7.2.
