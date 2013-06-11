class projects::project_ucid_hiera_production {

    notify { 'class projects::project_ucid_hiera_production declared': }

    boxen::project { 'project_ucid_hiera_production' :
        #nginx => true,
        memcached => true,
        ruby      => '1.8.7-p358',
        source    => 'git@vg0019d.corproot.net:project_ucid_hiera_production.git'
    }
}
