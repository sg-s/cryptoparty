# first compile the markdown into a HTML file
octodown README.md -r > index.html

# fix header and favicon
perl -pi -e 's/Octodown Preview/cryptoparty/g' index.html
perl -pi -e 's/https:\/\/raw.githubusercontent.com\/ianks\/octodown\/master\/assets\/favicon.png/assets\/favicon.ico/g' index.html
perl -pi -e 's/image\/png/image\/ico/g' index.html

# fix image widths
# perl -pi -e 's/max-width:100%/max-width:75%/g' index.html
# perl -pi -e 's/code.png" alt="" style="max-width:75%/code.png" alt="" style="max-width:100%/g' index.html
# perl -pi -e 's/banner.png" alt="" style="max-width:75%/banner.png" alt="" style="max-width:100%/g' index.html

# add breaks before sections
perl -pi -e 's/<h1>/<br><h1>/g' index.html

# open in browser
open "index.html"

# first compile the markdown into a HTML file
octodown short.md -r > short.html

# fix header and favicon
perl -pi -e 's/Octodown Preview/cryptoparty/g' short.html
perl -pi -e 's/https:\/\/raw.githubusercontent.com\/ianks\/octodown\/master\/assets\/favicon.png/assets\/favicon.ico/g' short.html
perl -pi -e 's/image\/png/image\/ico/g' short.html


# add breaks before sections
perl -pi -e 's/<h1>/<br><h1>/g' short.html

# open in browser
open "short.html"