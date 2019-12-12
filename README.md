# podman-diags

A set of somewhat trivial 'Dockerfile's to stage diagnostic containers
on the local machine for later use.

My purpose for staging these is so I can "podman run ..." and interact
with a recent/patched version of the base container, e.g. with epel
installed, to determine how the different base OS images are / are not
affected by various flaws.


## Building

A trivial script is present to (re)build each of the containers.

For the RHEL/UBI images, you will need to authenticate to the registry
in order to pull down the base images.

UBI is used to avoid subscription-manager complications when using
the images.

Note that "USER user" is defined in each Dockerfile.  This is to create
a user to use if required, not as default.


----

    ./build-all.sh

----



## Using

For example:

----

    podman run -ti --rm diags-rhel-77  [ bash ]

----

Inside this container, you can "yum install ...", "repoquery list ..." as
needed to perform the diagnostic work needed.


