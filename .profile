# delete the line starting with `php-fpm:`
# this makes PHP not start, which is good cause we don't need it
sed -i '/^php-fpm/d' $HOME/.procs

# unzip site files if they are zipped
pushd site/ 2>/dev/null
if [ -f "site.tar.gz" ]; then
    tar zxf site.tar.gz --strip-components 1
    rm site.tar.gz
fi
popd 2>/dev/null
