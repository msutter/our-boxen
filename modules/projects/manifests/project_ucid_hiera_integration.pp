class projects::project_ucid_hiera_integration {

    notify { 'class projects::project_ucid_hiera_integration declared': }

    boxen::project { 'project_ucid_hiera_integration' :
        #nginx => true,
        memcached => true,
        ruby      => '1.8.7-p358',
        source    => 'git@vg0019d.corproot.net:project_ucid_hiera_integration.git'
    }
}
