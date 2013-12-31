# Custom Completions
#if [ -d ~/.bash_completion.d ]; then
#    for i in ~/.bash_completion.d/*; do
#      . "$i"
#    done
#fi

# Load all files in bash_profile.d
# Keep this file tidy.
if [ -d ~/.bash_profile.d ]; then
    for i in ~/.bash_profile.d/*; do
       . "$i"
    done
fi
