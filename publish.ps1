# Publishes this folder as an unlisted GitHub Pages site under the davidngeiywa account.
# Run from PowerShell inside the site folder:  .\publish.ps1
gh auth switch -u davidngeiywa
git init; git add -A; git -c user.name="David Ngeiywa" -c user.email="ngeiywadavid1@gmail.com" commit -m "Proposal RFP-2026-SYS-003"
gh repo create nvx-r26-s003 --public --source=. --push --description "Nolvex - RFP-2026-SYS-003 response"
$branch = git branch --show-current
gh api -X POST repos/davidngeiywa/nvx-r26-s003/pages -f "source[branch]=$branch" -f "source[path]=/"
Write-Host "Live in about a minute at: https://davidngeiywa.github.io/nvx-r26-s003/"
