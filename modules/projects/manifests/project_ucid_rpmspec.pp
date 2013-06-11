class projects::project_ucid_rpmspec {

    notify { 'class projects::project_ucid_rpmspec declared': }

    boxen::project { 'project_ucid_rpmspec' :
        source    => 'git@vg0019d.corproot.net:project_ucid_rpmspec.git'
    }
}