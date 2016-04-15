# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
    Version control is a system or method of keeping track of changes to software (a file, a project, etc). Version control allows you to see who made changes (useful when collaborating on a project with other), what those changes were, and when they were made (useful when identifying a bug).
* What is a branch and why would you use one?
    A branch is a copy of the master branch and allows you to make changes locally before applying those changes to the master. Branching allows multiple people to work on and edit software at the same time, it also keeps the master clean and free from mistakes.
* What is a commit? What makes a good commit message?
    A commit is when you save a snapshot of your current work. You can make many changes or new things and a commit is signaling that it is at this point you would like to save a bookmark of where you are and what you did so you can eventually merge this work with the master (after review of course). A good commit message is in present tense, is relatively brief (under 50 characters or so), and gives specific information as to what was changed (additions, updates, deletions).
* What is a merge conflict?
    A merge conflict is when two branches have changed the same thing in different ways, ie in one branch someone deleted the content of line 5 in file X while in the other branch someone wrote more code on line 5 of file X.