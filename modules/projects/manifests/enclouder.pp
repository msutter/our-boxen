class projects::enclouder {

    notify { 'class projects::enclouder declared': }

    boxen::project { 'enclouder' :
        #nginx => true,
        memcached => true,
        ruby => '1.8.7',
        source => 'git@vg0019d.corproot.net:enclouder.git'
    }
}
