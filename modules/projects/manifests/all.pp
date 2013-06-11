class projects::all {

  notify { 'class projects::all declared': }

  #include_all_projects()

  include projects::enclouder
  include projects::project_ucid 
}