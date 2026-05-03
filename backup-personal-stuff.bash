# only run if the HDD is connected
if [ -d "/Volumes/One Touch" ]; then
    rsync -avhP ~/University\ of\ Michigan\ Dropbox/Timothy\ Moore/personal/ /Volumes/One\ Touch/backups/umich-dropbox-personal/
    rsync -avhP ~/University\ of\ Michigan\ Dropbox/Timothy\ Moore/tims-wiki-backups/ /Volumes/One\ Touch/backups/tims-wiki-backups/
    rsync -avhP ~/University\ of\ Michigan\ Dropbox/Timothy\ Moore/pdfs-for-zotero/ /Volumes/One\ Touch/backups/pdfs-for-zotero/
fi
