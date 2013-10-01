# General
I put all downloaded package under ~/.emacs.d/plugins

Then I load all module from plugins and my custom-mode

    (add-to-list 'load-path "~/.emacs.d/plugins/")
    (add-to-list 'load-path "~/.emacs.d/custom-mode/")
    
    
To load all the available custom-mode:

    ; python
    (load "custom-python.el")
    ; Autopair
    (load "custom-autopair.el")
    ; Markdown 
    (load "custom-markdown.el")
    ; Dired-mode
    (load "custom-dired-mode.el")
    ; Setting for theme, basic behavior
    (load "custom-interface.el")
    ; slime
    (load "custom-slime.el")
    ; clojure
    (load "custom-clojure.el")
    ;; org-mode 
    (load "custom-org-mode.el")
    ;; yassnippet
    (load "custom-yassnippet")
    ;;; auto complete
    (load "custom-autocomplete.el")

# Snippets

This contains my custom snippets for emacs. ( http://code.google.com/p/yasnippet/ )

It currently only contains extra snippets for python

## python-mode

### Testing
testclass : class for unittest

testdef : method for unittest

### Normal
headuni : generate unicode header for file

defm : class method

def__ : __init__ method

property : generate a getter and satter named as you type the property name

## django-mode
classmodel : as it said

models : models field, ask for type

route  : add urlpatterns route

## lisp-mode

defun : create basic function definition

let   : create a indented let inside a new defun construct

## Configuration

Load the custom snippet directory in your .emacs config file :

To set the directory as new default:

    (setq yas/root-directory "~/.emacs.d/custom-mode/snippets")
    (yas/load-directory yas/root-directory)

or just add it:

    (add-to-list 'load-path "~/.emacs.d/custom-mode/snippets")
    (yas/load-directory ".emacs.d/custom-mode/snippets/")


# custom-mode

## Configuration
Installed the mode in your .emacs.d/plugins directory


## Autopair
Custom configuration for autopair
http://code.google.com/p/autopair/

in main .emacs

    (load "custom-autopair.el")


## org-mode
Enable keymap for text-based project management

## ac-dict
Auto complete mode, suggest variable name, function et al.

## markdown
Custom configuration for markdown
http://jblevins.org/projects/markdown-mode/

In main .emacs

    (load "custom-markdown.el")

## dired-mode
For dired-mode I took a code exemple on the web to hide my python and emacs temp files

~*, .pyc, .pyo, #*#

    (load "custom-dired-mode.el")


## clojure
http://riddell.us/ClojureSwankLeiningenWithEmacsOnLinux.html

To support clojure project, slime

    ; clojure
    (load "custom-clojure.el")
    
installation :

    cd ~/.emacs.d/plugins
    git clone git://github.com/technomancy/clojure-mode.git 
   
Leinigen installation (java build tool for clojure):

    mkdir -p ~/opt/leiningen
    cd ~/opt/leiningen
    curl https://raw.github.com/technomancy/leiningen/stable/bin/lein > lein
    echo 'export PATH=$PATH:~/opt/leiningen' >> ~/.profile
    chmod +x lein
    ./lein self-install
    
    
## slime/swank
Basic configuration for slime

    (load "custom-slime.el") 
    
How to run swank/slime
Requires leinigen

    # create project and start swank/slime
    mkdir ~/tmp
    cd ~/tmp
    lein new test-project
    cd test-project
    # edit project.clj
    lein deps # builds dependencies
    lein swank # starts server
    
In emacs:

    M-x slime-connect
    C-x C-e # evaluate line
    C-c C-k # compile the file
    
    

# theme and basic behavior
I regroup some general and interface configuration in one file. It set default font, theme and basic key config

    (load "custom-interface.el")
    
