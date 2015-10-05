tracking-changes-reflection.md

How does tracking and adding changes make developers' lives easier?

Tracking and adding changes allows multiple users to work on the same project and make their own, documented changes on said project. It also allows you to save previous versions of your project.

What is a commit?

A commit is a version of your code/project. It can be returned to whenever you want.

What are the best practices for commit messages?

Commit messages should be concise. You can have a "subject," like in an email, and then in the next paragraph, slightly more detail.

What does the HEAD^ argument mean?

HEAD^ is your last commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

I think I know the 3 "stages":
  1. Untracked changes: changes you make to a file before you track them in any way.
  2. Staged changes: changes you've added in git but haven't committed.
  3. Committed changes: changes that have been committed and are ready to push.

  To move a file from untracked to staged, you do: git add [file]

  To move a file from staged to committed, you do: git commit -m "[commit message]" OR git commit -v and add commit message within the file

Write a handy cheatsheet of the commands you need to commit your changes?

git status -- gives you a summary of your changes, both untracked and staged.

git add -- adds the changes and therefore "stages" them

git commit -m "commit message" -- commits changes with a message

git commit -v -- type in your commit with a title and paragraph (if you want)

What is a pull request and how do you create and merge one?

A pull request is how you submit changes to a file/project. The person whose project you're changing will be able to review your request and incorporate it, if they decide to.

[Not sure if this much detail is necessary. I included it because it'll help me learn!]
You create a pull request by:
  1. Work on a branch other than your master.
  2. Then, go back to the origin (git push origin [proper GitHub branch])
  3. Terminal may as you for your GitHub credentials.
  4. When you log in, you will see the pull request and can click "Compare & pull request".
  5. Then you can review the changes. If they're good, click "Create pull request"
  6. Then, "Merge pull request" if the branch is up-to-date. "Confirm merge."
  7. Delete your branch when GitHub prompts you.
  8. Then, update your local version with git fetch origin master.
  9. Then merge the temporary file that has been created by step 8 with "git merge origin/master"

Why are pull requests preferred when working with teams?

They're preferred because they allow multiple people to edit a project. They also give the project owner an organized way to review proposed edits.
