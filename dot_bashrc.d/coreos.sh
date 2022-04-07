# coreos.sh

alias butane='podman run --rm --interactive       \
              --security-opt label=disable        \
              --volume ${PWD}:/pwd --workdir /pwd \
              quay.io/coreos/butane:release'

alias coreos-installer='podman run --pull=always            \
                        --rm --interactive                  \
                        --security-opt label=disable        \
                        --volume ${PWD}:/pwd --workdir /pwd \
                        quay.io/coreos/coreos-installer:release'

alias ignition-validate='podman run --rm --interactive       \
                         --security-opt label=disable        \
                         --volume ${PWD}:/pwd --workdir /pwd \
                         quay.io/coreos/ignition-validate:release'
