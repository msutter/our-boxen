class projects::project_ucid {

    notify { 'class projects::project_ucid declared': }

    boxen::project { 'project_ucid' :
        #nginx => true,
        memcached => true,
        ruby      => '1.8.7-p358',
        source    => 'git@vg0019d.corproot.net:project_ucid.git'
    }
}
