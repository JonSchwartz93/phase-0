# **1.1 Think About Time Reflection**
After reading and watching the provided resources, I have found several themes that consistently reappear when it comes to methods of time management and productivity. One concept that recurs throughout the research is “starting small.” In his blog series *“The Habits of Successful People,”* Joel Cascoigne notes that many success stories started with an idea only a fraction of the size of what they eventually became. For example, Richard Branson’s “Virgin” brand began with a student magazine. Another example of this that came to mind as I sit here typing this reflection is Facebook, which started as a social media platform tailored towards students at Harvard College. The idea of “starting small” is also relevant to time management, specifically the establishment of habits. BJ Fogg’s *Ted-Talk* provides some incite into ways of establishing “tiny habits.” Fogg has derived a 3-step process for systematically changing one’s behavior: 1) get specific (what behavior/habit do you want?), 2) make it easy (how can you make the behavior/habit easy to do?), and 3) trigger the behavior (what will prompt the behavior/habit?). Another technique for establishing a desired habit is “Time Boxing.” This is a method of measuring productivity whereby an individual or a team sets a specified block (box) of time within which they focus not necessarily on achieving, but progressing towards a certain goal or objective. Once the allotted time is up, the next step is to review the progress made towards that goal, and assess what was accomplished.

Prior to this "Thinking About Time" assignment, I did not have an effective method for managing my time, and I was very disorganized and unregimented when it came to completing certain tasks. “Time Boxing” is a technique that I will implement into my plan for success in Phase 0. I believe that it is a very practical method that, over time, will lead to increased focus and an internal desire to achieve more and more on a daily basis. I plan on “starting small” in Phase 0 by setting a timer for 1-hour for each “Module” on Canvas, and seeing how much I can accomplish during that time, with 10-minute blocks of free time between each hour. If an assignment is not completed during that initial 1-hour block, I will repeat the process by setting additional 1-hour blocks of time until completion.

# **1.2 The Command Line Reflection**
A shell is a user interface (such as bash, the default shell on Mac OS X) that grants an individual the ability to interact with an operating system’s services. In other words, the shell is a software program that interprets commands from the user so that a computer’s operating system can perform certain functions. “bash” is a Unix shell and command language. There were several challenges I faced while going through this material. One obstacle was simply understanding how the command-line interface works. Most of this material is entirely new to me, so learning the language of computer science is an arduous task. Another challenging aspect of this assignment was visualizing or wrapping my head around what happens when I type something into the command-line and how it changes what I would see had I completed the same task via the Graphical User Interface (GUI). For the most part, I was able to successfully use the commands, although I am still uneasy about certain ones, namely pushd, popd, cp, less, and cat. In my opinion, the most important command to know is “man” because if you are unsure about what a certain command does, you have access to a description of the said command and how to use it, all via “man".

<ul>
	<li>pwd = print working directory</li>

	<li>ls = lists the contents of a directory</li>

	<li>mv = move (renames a file or directory)</li>

	<li>cd = change directory (moves down to the next directory in the path)</li>

	<li>../ = if you type this with cd, you can change directory by moving up to the directory in the path</li>

	<li>touch = creates a file</li>

	<li>mkdir = creates a directory</li>

	<li>less = allows you to view the contents of a file and you can “page” through that file so that only a portion of the file will appear.</li>

	<li>rmdir = removes a directory (this is done while the user is situated in the directory above the directory being removed)</li>

	<li>rm = removes a file</li>

	<li>help = presents a list of commands that are frequently used and defined internally within the CLI.</li>
</ul>

# **1.4 Forking and Cloning Reflection**
**How to:**

**Create a new repo:** Go to GitHub.com. Once there, click on the “+” in the upper-right hand corner of the page and click “New repository.” You should now be on the “Create a new repository” page. Assuming that you are the owner of the repo, name your repo, and select “Public” for your repo visibility. Add the desired license to the repo, and click “Create repository” to complete the form.

**Fork a repo:** Forking, or copying, a repository is another way of saying that you are creating a separate, distinct copy of the repo on your own GitHub account. In order to do this, click the “Fork” button near the upper-right hand corner of the desired repository page. Once the repo has been successfully forked, GitHub will redirect you to your copy of the repo. You can distinguish between your copy of the repo, and the original copy because your username will precede the repository name, [USERNAME] / [repo name].

**Clone a repo:** Cloning a repository is another way of saying that you are creating a local repository (the copy of the repo on your computer). This can be achieved via the command line. Open Terminal and check where you are via “pwd”. You should never clone a repo into another local GitHub repo (another repo on your computer), so always make sure that you are in the correct directory such as your Desktop or a phase-0 folder (which may contain other local repositories, but isn’t a repository itself). On GitHub, locate the URL of your forked repo and copy it to your clipboard. In Terminal, type “git clone [paste URL_THAT_YOU_COPIED]”, and hit Enter. To confirm that you have successfully created a local repo, execute the command “ls” and you should see the folder with the same name as the repo you cloned.

Forking a repository as opposed to creating an entirely new one allows you to build off of and revise the original work of the owner of that repository. In other words, you are making your own, distinct copy of the said repo on your own GitHub account. Setting up git and GitHub wasn’t overly difficult. However, deleting my local copies of the repos that I cloned (using the command line) and cloning them again (for practice purposes) was a bit challenging. More specifically, I had difficulty deleting the repo “p0-cli-exploration.” The reason why this was challenging was because this repo has several directories beneath it along the path. This made it difficult to “rmdir p0-cli-exploration” (deleting the repo) because I needed to delete the contents of that repo before actually deleting it (aka it was just a tedious process). Nevertheless, this process was certainly a learning experience, and I learned how to create, fork, and clone repositories, skills that will most certainly prove useful later on in DBC.