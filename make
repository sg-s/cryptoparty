# first compile the markdown into a HTML file
octodown README.md -r > index.html

# fix header and favicon
perl -pi -e 's/Octodown Preview/cryptoparty/g' index.html
perl -pi -e 's/https:\/\/raw.githubusercontent.com\/ianks\/octodown\/master\/assets\/favicon.png/assets\/favicon.ico/g' index.html
perl -pi -e 's/image\/png/image\/ico/g' index.html


# add breaks before sections
perl -pi -e 's/<h1>/<br><h1>/g' index.html


# fix all relative links
perl -pi -e 's/\/Users\/sigbhu\/code\/cryptoparty/./g' index.html

# open in browser
open "index.html"