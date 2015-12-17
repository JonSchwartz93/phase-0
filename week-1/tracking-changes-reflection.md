#**1.5 - Tracking Changes Reflection**

**How does tracking and adding changes make developers' lives easier?**
Tracking and adding changes makes developers' lives easier because if a mistake is made in the latter stages of a project, it is very easy to take a couple of steps back and resume the project from the stage where the project was operating correctly. In other words, committing early and often during the course of a project will provide a safety net if you accidentally introcuce bugs in your code so that you can revert to a working state while you debug your code.

**What is a commit?**
A commit is a snapshot of your code that you can go back to at any time. It is a saved point in your code. Over the course of a project, you can view earlier commits as a "history" of sorts, illustrating how your project has progressed over time (git log). 

**What are the best practices for commit messages?**
There are several important things to consider when composing a commit message. The first line of the commit message should be a short description (~50-character limit). This is essentially the subject line of the commit message. Beneath that is essentially the body of the commit message where you should provide meaningful information regarding the commit. Make sure to use the imperative, present tense (change not changed, or merge not merged, this is the tense that git is written in) and include the reasoning behind the change (why this versus what was previously being done) and what the commit will do, NOT what you did.

**What does the HEAD^ argument mean?**
HEAD^ is the last commit before the one you are currently on (which is denoted simply by HEAD).

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
The 3 stages of a git change are 1) making the changes, 2)staging the changes, and 3) committing the changes. Prior to making any changes to a file, it is important to first check the current state of the repository via "git status." This command checks the status of the repo and reports that there's "nothing to commit (working directory clean)" or in other words, the repo stores the current version of the working directory and there are no changes to record. (**NOTE:** it is also important to make sure that you aren't making changes to the "master branch," but rather on a subsequent, "feature" branch so that the entire repo isn't affected by the changes, just a specied part.) Once this quick check is done, you can begin a git change with the first stage: making the changes. Open the desired file and modify it however you'd like, and then back in Terminal, type "git status." This should return several important things. Git knows that you made a change, but that they are not yet premanent in the repo. If you would like to add the changes you can use the command "git add," while if you'd like to undo the changes you can use "git checkout." Next, you'll need to stage the changes, which is accomplished by using "git add." Once you've done this, all you need to do is commit the changes. This is a snapshot of the changes you made from the previous stage of the file, which is done by typing "git commit." You can then use the command "git commit -m" followed by a message describing the changes.

**Write a handy cheatsheet of the commands you need to commit your changes?**
<ul>
	<li>git status - check the status of the repo</li>
	<li>git add - add the changes to the file</li> 
	<li>git commit -m - compose commit message describing changes to file</li>
	<li>git log - view a history of commits to the file</li>
</ul>

**What is a pull request and how do you create and merge one?**
A pull request is a way to merge code from a different branch into the master branch. In order to set up a pull request, you'll first need to create a new branch from the command line, check out the branch, write and commit some code, and push the branch to GitHub. Pushing your changes to GitHub is achieve by executing the command "git push origin new-branch-name." Once this is done, in GitHub, you should see a "Compare and pull request" button when you visit your desired repository. Click on that. Then you'll come to a page titled "Open a pull request." Confirm  that the "base" and "comparison" branches (located just below the title) are "master" and "new-branch-name," respectively. Below that, fill in the title of and description of the changes, with the description going into a bit more detail as needed. Finally, click the "Create pull request" button at the bottom right-hand corner of the page. 

Within the pull request, find the "Merge pull request" button that appears on the "Conversation" tab of your pull request. Then click "Confirm merge." You will then be asked if you'd like to "Delete branch." Click this as a method of "house-keeping" to keep your branches organized. 

**Why are pull requests preferred when working with teams?**
Pull requests are preferred when working with teams because they create a linkable page that allows developers to review code together.