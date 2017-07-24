alias br="bin/rake"
alias rdm='bin/rake db:migrate && bin/rake db:migrate RAILS_ENV=test'
alias rdr='bin/rake db:rollback && bin/rake db:rollback RAILS_ENV=test'
alias rdsl='bin/rake db:schema:load && bin/rake db:schema:load RAILS_ENV=test'
alias rdc='bin/rake db:create && bin/rake db:create RAILS_ENV=test'

alias rc='rails console'
alias rg='rails generate'
alias rgm='rails generate migration'
alias rp='rails plugin'
alias rs='rails server'
alias bi='bundle install'
alias bu='bundle update'
alias rap='RAILS_ENV=production bin/rake assets:precompile'

# test
alias bs='bin/rspec --format progress'

#Heroku
alias hc='heroku console'
alias hr='heroku rake'
alias hrdm='heroku rake db:migrate'
alias hl='heroku logs --tail'
alias hbi='heroku bundle install'
