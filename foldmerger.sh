#foldercommits=$(cd /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause && git log --format=format:%H . | tr "\n" " ")
#foldercommits=$(cd /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause && git log --format=format:%H . | tac | tr "\n" " ")
foldercommits=$(cd /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause && git log --reverse --format=format:%H . | tr "\n" " ")
mkdir foldmerger-tmp
cd foldmerger-tmp
git init
git remote add host-of-folder /media/daniella/B/git/Floflis/cinnamon-spices-applets/ && git fetch host-of-folder
#git cherry-pick $foldercommits
#git cherry-pick $foldercommits --strategy-option theirs
git cherry-pick -X theirs $foldercommits
git add .
git cherry-pick --continue
##find . ! -name "$CinnVIIStarkMenu@NikoKrause" -type f -exec rm -f {} +
##mkdir gitfolder-merged
##mv -f CinnVIIStarkMenu@NikoKrause gitfolder-merged
##git add . && git commit -m "Solve conflicts"
##git cherry-pick $foldercommits --continue
##git add gitfolder-merged CinnVIIStarkMenu@NikoKrause && git commit -m "Merge from folder"
##cd .. && git remote add gitfolder-merger foldmerger-tmp && git pull gitfolder-merger master --allow-unrelated-histories && git remote remove gitfolder-merger
#mkdir /usr/lib/web3updater/tmp-remote && cd /usr/lib/web3updater && git remote add web3updater tmp-remote && cd "$SCRIPTPATH"
#git cherry-pick $(git log --format=oneline --no-merges master...master /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause | tail -r | cut -d " " -f 1)

#git format-patch -k --stdout master...master -- /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause | git am -3 -k

#git checkout master -- /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause

#cp -f /media/daniella/B/git/Floflis/cinnamon-spices-applets/CinnVIIStarkMenu@NikoKrause CinnVIIStarkMenu@NikoKrause
#git checkout master CinnVIIStarkMenu@NikoKrause -r

#if [[ "$1" = "" ]];then
#
#fi
