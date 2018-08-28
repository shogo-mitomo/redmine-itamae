export RAILS_DATABASE_HOST=xxxxxxxxxx
export RAILS_DATABASE_PASSWORD=xxxxxxxxxx
export RAILS_ENV=production
export RAILS_SERVE_STATIC_FILES=true
export RAILS_SMTP_DOMAIN=xxxxxxxxxx
export WEB_CONCURRENCY
WEB_CONCURRENCY="$(grep -c processor < /proc/cpuinfo)"
