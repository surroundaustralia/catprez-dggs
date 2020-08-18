# implement this data and catalogue URI
# replace the $CP_THEME_HOME in config_additions.py with the real value
sed -e "s#\${CP_THEME_HOME}#$CP_THEME_HOME/data#" -e "s#http://example.com/cat#https://w3id.org/dggs/cat#" config_additions.py

# copy all style content to CP
echo "copying $CP_THEME_HOME/style content to $CP_HOME/catprez/view/style"
cp $CP_THEME_HOME/style/* $CP_HOME/catprez/view/style

# overwrite templates
echo "copying $CP_THEME_HOME/templates content to $CP_HOME/catprez/view/templates"
cp $CP_THEME_HOME/templates/* $CP_HOME/catprez/view/templates

## append paths to CP routes, removing running locally commands
#echo "adding new routes to $CP_HOME/catprez/app.py"
## truncate app.py
#sed -i -n '/# run the Flask app/q;p' $CP_HOME/catprez/app.py
## add new routes
#cat $CP_THEME_HOME/routes.txt >> $CP_HOME/catprez/app.py

echo "customisation done"