# **Git Module** 💻

**__Why is Git so important?__**

- A distributed version control system (VCS) that enables multiple users to collaborate on projects, track changes in files, and manage branches and code merges efficiently. 🛠️



**__Industry Standard__**

- Git is the standard tool in the software industry for managing project changes.
- Versatile and powerful, it’s an essential skill for developers.
- A common language for teams worldwide 🌍.



**__Version Control__**

- Maintains a history of changes.
- Provides stability in development by tracking, managing, and changing the codebase.
- The backbone of software development 🧠.



**__Backup and Restore__**

- Every change is recorded, so it's a great backup system.
- Allows you to restore previous versions.
- Helps prevent data loss and unintended changes.
- Revert to a stable state anytime ⏪.



**__Branching and Merging__**

- Work on multiple aspects of the project at once.
- Develop new features, fix bugs, or experiment with ideas in isolation without affecting the main code.
- Simplifies team collaboration 🤝.



**__Merge Conflicts in Git__**

A merge conflict occurs when Git can't automatically merge changes from two branches. This usually happens when multiple people edit the same file or line of code.

- **When?** During a merge or rebase with conflicting changes in the same file.
- **Why?** Git halts the process, needing you to manually resolve the conflict. ⚠️



**__Prevention Tips__**  
- Communicate with your team regularly.
- Frequently pull changes (`git pull`).
- Commit often to minimise conflicts down the road.



**__README File__**

- A crucial document that explains your project’s purpose and how to use it.
- Helps newcomers understand the structure and goals.
- Provides setup instructions and contributor guidelines 📝.
- Often the first impression for users visiting your repo.



**__Git Workflow__**
<img width="1247" alt="Screenshot 2024-09-12 at 22 37 52" src="https://github.com/user-attachments/assets/b4ee6cb6-704a-477e-8f2b-173c519f8a2a">

- **Remote stage:** A version of your project hosted online (e.g. GitHub). You push changes here for others to access.
- **Git clone:** Copies a remote repository to your local machine.
- **Working directory:** Where you make changes to your project files.
- **Staging area:** Where changes go before they are committed.
- **Final stage (Local repository):** Your personal copy of a project before pushing changes to the remote repository.



**__Git Commands__**

| **Git Command** | **Function**                                         |
|-----------------|-----------------------------------------------------|
| `git clone`     | Copies a remote repository to your local machine.    |
| `git add`       | Stages changes, preparing them for the next commit.  |
| `git commit`    | Saves staged changes with a message.                 |
| `git status`    | Shows the current state of your working directory.   |
| `git push`      | Uploads local commits to a remote repository.        |
| `git pull`      | Fetches and merges changes from a remote repository. |



**__Commits__**

- Commits save your changes to the local repository.
- They help track the project’s history and allow easy rollback.
- Include a message describing the purpose of the change.
- Group related changes together.
- Essential for collaboration and keeping track of project progress. 📈



**__Good Commit Practices__**

- Commit often.
- Write clear, descriptive messages.
- Commit related changes together.
- Test before committing.
- Avoid committing unnecessary files (e.g. large or generated files).
- Keep a consistent message style 🖊️.



**__Branching__**

- Allows developers to work on different features or fixes without affecting the main project.
- Features are developed in separate branches, which are later merged into the main branch.
- Provides isolated workspaces, so it’s easier to debug and innovate without affecting ongoing work 🚧.

A Branching workflow:
<img width="936" alt="Screenshot 2024-09-13 at 17 20 54" src="https://github.com/user-attachments/assets/438dcc1e-3c9f-45ca-8a26-d5375fe714e7">

The branch is tested rigorously in the develop and release branches to ensure that there are no bugs and ensure that everything runs smoothly.

<img width="1150" alt="Screenshot 2024-09-13 at 17 23 56" src="https://github.com/user-attachments/assets/643c6fbe-0c9a-4a6f-98a5-109d455a2c62">

Hotfix stage: The stage where a bug is isolated from the rest for a quick debug then merged back into the two parallels (Master branch and Develop branch)

Feature stage: The stage where features are added in while being tested, innovated and more

**__Pull Requests__**

- Allows team members to review code changes before merging into the main branch.
- Ensures changes meet industry standards and don’t introduce issues.
- Keeps a detailed record of all changes and discussions.



**__Merge Conflict__**

- Occurs when the `git pull` command isn’t run after a change is made to the main branch.
- Your local copy is not up to date with the remote repository.
- Happens when Git cannot resolve differences between two commits automatically, requiring manual resolution.



**__How to Resolve Conflict via GitHub__**

1. Identify Conflict: Git will notify you after a failed merge.
2. Navigate to GitHub: Find the pull request or branch showing the conflict.
3. Open Conflict: GitHub highlights conflicting files.
4. Edit: Review changes, decide what stays, and resolve.
5. Mark as Resolved: Click "Mark as resolved".
6. Commit: Finalise by committing the resolved changes.



**__Rebasing and Force Pushing__**

Rebasing keeps a linear project history. It updates your feature branch with the latest changes from the main branch.

**How to Rebase and Force Push:**

1. Start Rebase:  
   `git fetch`  
   `git rebase origin/main`  

2. Resolve Conflicts:  
   Fix conflicts, add files:  
   `git add <file>`  
   Continue:  
   `git rebase --continue`  

3. Force Push:  
   `git push --force`  



**__Squashing Commits__**

Squashing combines multiple commits into one for a cleaner history. It simplifies reviewing changes.

**How to Squash:**

1. Start Interactive Rebase:  
   `git rebase -i HEAD~n`  
   Replace `n` with the number of commits to squash.

2. Mark Commits to Squash:  
   Change `pick` to `squash` or `s` for the commits.

3. Edit Commit Message:  
   Modify as needed, save, and close.

4. Finish Rebase:  
   `git push --force` (if necessary).



**__gitignore Files__**

A `.gitignore` file tells Git what to ignore, such as large or sensitive files that you don't want tracked. 📂

How to create:
1. Create a `.gitignore` file
2. Add files to be ignored using a . at the start of file name
3. Save




