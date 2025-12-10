# Developers-Website

Below, knowledge of the Unix hacker's "awk-sed-grep" toolkit is assumed, also
Fortran, bash or sh, and inevitably git.  
The repo is referred to as github, pulled into local directory ~/devweb

## Maintainer's notes

Deployment involves files in at least two branches of the repo including Github-Pages.
The workflow is controlled by file on branch main (or possibly a user branch):  
~/devweb/.github/workflows/pages.yml  
which invokes on (this) branch Github-Pages, under "name Generate html" in the .yml  
~/devweb/run.sh  
which in turn invokes on branch main (or possibly a user branch),  
~/devweb/buildwebsite-githubpage.sh  
Uncomment "set -x" at line 2 for better diagnostics of the Action in
the two shell files, see Debugging Actions below. 

Evidently updates to the workflow involve swopping between branches,
a possible CLI sequence is :

git checkout main
*edit* .github/workflows/pages.yml  
*edit* buildwebsite-githubpage.sh  
git commit -a -m "join the campaign for better designed software"  
git push github  
get checkout Github-Pages  
*edit* run.sh  
git commit -a -m "join the campaign for better designed software"  
git push github

git will annoy you by rejecting your first pushes because of a logically spurious clash,
ignore this in the pull by typing ctrl/O, return, ctrl/X, do
remember that obscenities are not good practice in push comments.

The workflow should be automatically invoked by the push of main, assuming
changes were made to branch main (or possibly a user branch).

## Debugging Workflow Actions

Under your repository name, click Actions. This lists workflow runs, beware
that green/tick markings mean only that the workflow/task has completed, NOT
that it succeeded. To find out what really happened, click on the relevant
(usually latest)  workflow,
then click on the pages.yml box to bring up another list of ticks, and work
through the sequence looking for errors in each one, the 3rd step labelled
"Generate html" is the most likely to contain error messages if the website has
not deployed.

Be aware that the "Find" 
(ctrl-F) search is unreliable/erratic, reflecting the poor quality software
(cf. the failure to preserve upwards compatibility at each release).
It is unlikely that github-specific information provided herein will
continue to be accurate for very long after December 2025.

pages.yml is based on the script static.yml found under the
heading Pages, click Configure in the box at bottom left labelled
"Static HTML", which might give the current version (@v) numbers for
each (sub-)action.
