# My Linux config file:


## Testing out Github Documentation

Learn to document all my repo,s more 

<hr>

### Steps to managing config files - (change info)

    $ git clone https://github.com/jacgit18/BashConfigFiles.git
    $ source ~/.bashrc
 
- Create repo first if it doesnt exist initially

#### Setting up github config for pushing & pulling
    
    $ mkdir bashDotFiles 
    $ git init --bare $HOME/bashDotFiles/ && ls bashDotFiles/
    $ echo "alias config='/usr/bin/git --git-dir=$HOME/bashDotFiles/ --work-tree=$HOME'" >> $HOME/.bashrc 
    $ config config --local status.showUntrackedFiles no
    
##### Prior Setup
    $ git config --global user.email joshuacarpentier21@gmail.com
    $ git config --global user.name "jac"
    $ git remote add origin https://github.com/jacgit18/BashConfigFiles.git
    $ git branch --set-upstream-to=origin/master 
    $ git status
    
    $ config push --set-upstream https://github.com/jacgit18/BashConfigFiles.git
    $ config pull --set-upstream https://github.com/jacgit18/BashConfigFiles.git
    
    $ config add file 
    $ config commit -m "Add changes"
    $ config push 
</hr>


## GitHub Markdown Cheat sheet: 

![GitHub Markdown Cheat Sheet](/Images/Cheat_Sheet.png)

<hr>

### Challenge 2: Edit these lines such that the items in the list below are ordered! 

</hr>

1. item 1
2. item 2
3. item 3
- item 4
- item 5
- item 6

<hr>

### Challenge 3: Edit the following lines so that the text below appears: *italic*

<hr>

*1 Leetcode a day keeps unemployment away. Start finite first, then inductively expand. Focus on your Foundation, frameworks come and go! The best way to learn is to learn by doing, and try to break things, the more you mess around with the code the better your understanding will become!*
<hr>

### Challenge 4: Find the hidden image and add it to this page! 
*(Hint: Check the Images Folder)*

<hr>

![CTP Logo](/Images/CTP_Logo.jpg)

**Note:** You can also embed images like this using URL's instead of the local file location! 
Insert the URL inside the (Parenthesis) rather than the file location. 
If your lost go into edit mode to see what I'm referring to!

<hr>

### Challenge 5: Embed an image using an URL but this time use the appropriate HTML < img > tag syntax instead

<hr>

**Recall:** The < img > tag in HTML is self closing! 

<img src="https://i.pinimg.com/originals/7e/dc/1c/7edc1cf31629edd5b96e275a7d95d0e5.gif" />

<hr>

### Challenge 6: Add a .gif file to this document: 
*(Hint: Check the GIFs Folder, look for a file named Challenge_6.gif)* 

![ GIF File](/GIFs/Challenge_6.gif)

# Stretch Challenge: 
### For those of you who wish to surpass their limits, and go beyond!  
#### The Cheat Sheet might not cover this entirely:

<hr>

### Challenge 7: When inserting Linux or shell commands in a README it is convention to write the line as block element, and place a '$' symbol to let the reader know that this line is a bash terminal/shell command. Make the following line below a block element: 

*(Hint: Try using the 'tab' key to indent the line)*

<hr>

- Ubuntu tab twice
    
        $ sudo apt-get update

- Arch 

        $ sudo pacman -Syu

<hr>

### Challenge 8: Add some ASCII Art without it being ruined using Markdown syntax highlighting:
*(Hint: 3 back ticks before and 3 back ticks after with a line of spacing on top and bottom before pasting the ascii art!)*

<hr>

You may copy and paste the following <a href="https://www.twitchquotes.com/copypastas/3100">ASCII art</a>

```
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣷⡄⢀⣴⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣇⣀⣠⣤⣤⡤⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣋⣅⣀⣀⣌⠉⠻⢿⣿⣿⣿⡿⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡟⠋⠉⠀⠀⠉⠙⠻⢶⡌⢻⣿⣿⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣀⣠⣾⣿⣧⣶⣦⣄⢀⣤⣶⣦⣄⠀⠘⣿⣿⣿⣶⣦⣀
⠀⣰⡆⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⠆⠀⣿⣿⣿⠟⠋⠁
⠀⣿⣇⠀⠀⠀⠀⠀⠀⣸⣿⠻⠿⠟⡃⠀⠻⠿⠿⠟⠀⠀⣿⣿⣶⣄⠀⠀
⠀⢹⣿⣤⣤⣄⣀⠀⠾⠿⣿⡀⠀⠀⣇⣼⠀⠀⠀⠀⠀⢀⠙⣿⣿⡿⠿⠀
⠀⢸⣿⣿⣿⣿⣿⠀⠀⢀⣼⡧⢀⣠⣤⣤⣄⠀⠀⠀⠀⢠⣶⣿⣍⠀⠀⠀
⠀⠘⠿⣿⣿⣿⠋⠀⠀⠈⠽⢷⡿⣿⣿⣿⣿⡷⠂⠀⢠⣿⡍⠉⠉⠀⠀⠀
⠀⠀⠀⣼⠉⢧⠀⠀⠀⠀⢠⣡⢽⣤⣀⠀⠀⠀⣠⠞⠃⠀⠁⠀⠀⠀⠀⠀
⠀⠀⠘⡇⠀⠘⡆⠀⠀⠀⢸⣸⢼⡽⣿⣷⣄⢰⣿⣦⣄⣀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣿⠀⠀⣷⣶⡄⢠⠎⠀⠀⣰⢟⣿⣿⣿⣿⢻⡄⠈⢳⡀⠀⠀⠀⠀
⠀⠀⠀⣿⠀⢀⡇⠀⣰⠋⠀⣤⣼⠏⢸⣿⣿⣿⣿⠘⣷⠀⠀⢳⡀⠀⠀⠀
⢀⠀⠀⣿⠀⠈⣇⣵⠃⠀⢠⣿⡏⠀⣼⣿⣿⣿⡏⠀⢹⡆⠀⠈⡇⠀⠀⠀
⠀⠀⠀⢸⠀⠀⠉⠉⠀⣠⣾⣿⠻⣄⣻⣿⣿⣿⡇⣤⡾⠃⠀⠀⡇⠀⠀⠀```

```

>*(Additional Hint: What is a back tick? It is also known as the '~' tilda key, 
it is located above the tab key, and below the esc key on modern keybaords! 
The back tick symbol looks like this: **`** )*

<hr>

### Challenge 9: Proving why Challenge 8 is practical and useful 

<hr>

- Task: List the Directory Structure using the same technique from Challenge 8: 

On small scale repositories like this it's not such a big deal, but as your project grows over time, and as you get more collaborators onboard,
eventually your code base will baloon and it will take of alot of effort and sanity checking to make sure everyone understands the file structure of your project! 
Thankfully the community has built tools like <a href="http://manpages.ubuntu.com/manpages/trusty/man1/tree.1.html">tree</a>. Tree is a recursive directory listing program that produces a depth indented listing of files it can be installed on Mac OS X, Windows (WSL), and Linux.

#### How tree works: 

![Tree.gif](/GIFs/Tree.gif)


#### Here is the file structure for this repository make this into a block element so it doesn't look as messy: use tilda sign under esc
```
.
├── Images
│   ├── CTP_Logo.png
│   ├── MERN Stack Image.jpg
│   
├── GIFs
│   ├── Tree.gif
|   ├── Stretch Challenge Completed.gif
|   ├── Challenge_6.gif
|   
```

<hr>

### Challenge 10: Make this repository your own! 

<hr>

Add your own code in this repository and try to document your own code. Make sure to include any dependencies, and list the input parameters for each function and the return value of the corresponding function. You can organize this information in any way you see fit. Just make sure to assume the reader is a complete beginner, and has no idea what your code does, as such your README should have the most critical information here, in a visually appealing way that is easy to follow and understand. 


<hr>

# Congratulations! 

You've completed the stretch guantlet, and used this workshop as an opportunity to expand your horizons! 

Here are additional resources you can visit if you ever need to reference anything aside from this repository!  :)

    https://guides.github.com/features/mastering-markdown/

<hr>

![Completion.gif](/GIFs/Completion.gif)


