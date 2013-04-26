class projects::enclouder {
    boxen::project { 'enclouder' :
        #nginx => true,
        postgresql => true,
        memcached => true,
        ruby => 'ree-1.8.7-2012.01',
        source => 'git@vg0019d.corproot.net:enclouder.git'
    }
}