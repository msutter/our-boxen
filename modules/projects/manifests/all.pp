class projects::all {

  notify { 'class projects::all declared': }

  #include_all_projects()

  include projects::enclouder
  include projects::project_ucid 
  include projects::project_ucid_integration
  include projects::project_ucid_production 
}