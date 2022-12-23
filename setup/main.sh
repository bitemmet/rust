
this_script_dir_path=$(realpath  $(dirname ${BASH_SOURCE[0]}))


function setup_environment() {
    export PATH="/workspace/rust/setup/bin/:$PATH"
}


function install_rust() {
    rustup default nightly
}

function install_helix() {
    cd ${this_script_dir_path}/build
    git clone https://github.com/helix-editor/helix.git
    cd helix
    cargo install --path helix-term
}


function main() {
    setup_environment
}

main