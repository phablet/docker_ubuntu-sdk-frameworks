Supported tags and respective `Dockerfile` links
=======
- [`vivid-amd64_armhf`, `latest` (*vivid-amd64_armhf/Dockerfile*)][1]
- [`vivid-i386_i386` (*vivid-i386_i386/Dockerfile*)][2]

What is Ubuntu Core?
=======

See [https://developer.ubuntu.com/en/apps/sdk/][3].

About these images
=======

## Tag Policy

In general, tags have the names in `<host_suite>`-`<host_arch>`_`<target_arch>` format.

## Development

 1. pull Ubuntu Core images for the host. Currently you need only vivid-amd64 and/or vivid-i386.

    docker pull vicamo/vivid-amd64

    docker pull vicamo/vivid-i386

 2. checkout git repository for Dockerfiles.

    git clone -b master git@github.com:vicamo/docker-ubuntu-sdk.git

 3. Have some fun by:

    docker build vivid-amd64_armhf
    docker build vivid-i386_i386

User Feedback
=======
## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue][4].

## Contributing
You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue][4], especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.

  [1]: https://github.com/vicamo/docker-ubuntu-sdk/blob/master/vivid-amd64_armhf/Dockerfile
  [2]: https://github.com/vicamo/docker-ubuntu-sdk/blob/master/vivid-i386_i386/Dockerfile
  [3]: https://developer.ubuntu.com/en/apps/sdk/
  [4]: https://github.com/vicamo/docker-ubuntu-sdk/issues
