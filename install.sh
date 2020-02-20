rm -rf app/assets/stylesheets
curl -L https://github.com/lewagon/rails-stylesheets/archive/master.zip > stylesheets.zip
unzip stylesheets.zip -d app/assets && rm -f stylesheets.zip && rm -f app/assets/rails-stylesheets-master/README.md
mkdir app/assets/stylesheets
mkdir app/assets/stylesheets/components
mkdir app/assets/stylesheets/config
mkdir app/assets/stylesheets/pages
mv app/assets/rails-stylesheets-master/application.scss app/assets/stylesheets
mv app/assets/rails-stylesheets-master/components/* app/assets/stylesheets/components/
mv app/assets/rails-stylesheets-master/config/* app/assets/stylesheets/config/
mv app/assets/rails-stylesheets-master/pages/* app/assets/stylesheets/pages/
rm -rf app/assets/rails-stylesheets-master