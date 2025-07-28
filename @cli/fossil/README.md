[Version Control without access to Git or any SC tools? - Stack Overflow](https://stackoverflow.com/questions/48174143/version-control-without-access-to-git-or-any-sc-tools)


[Fossil: Home](https://fossil-scm.org/home/doc/trunk/www/index.wiki)

    fossil init REPOSITORY-DIR/new-repository
    fossil open REPOSITORY-DIR/new-repository
    fossil add files-or-directories
    fossil commit -m "commit message"
    fossil ui


[Fossil: Fossil Quick Start Guide](https://fossil-scm.org/home/doc/trunk/www/quickstart.wiki)


[Get started with Fossil, an alternative to Git | Opensource.com](https://opensource.com/article/20/11/fossil)

    fossil init myproject.fossil
    mkdir myprojectdir
    cd myprojectdir
    fossil open ../myproject.fossil


# Sub commands

## status

fossil status

## add

--dotfiles              include files beginning with a dot (".")
fossil add . --dotfiles

## delete
fossil delete FILE

## branch

fossil branch trunk

## checkout

fossil checkout trunk

## changes

--all             Display all managed files, i.e. all of the above.
--extra           Display unmanaged files.

fossil changes --all
fossil changes --extra

## timeline

fossil timeline


# Setup

[Chocolatey Software | Fossil SCM 2.20](https://community.chocolatey.org/packages/fossil)
[fossil - FossilSCM, ignoring files on add - Stack Overflow](https://stackoverflow.com/questions/4491447/fossilscm-ignoring-files-on-add)

    fossil settings ignore-glob "*/*.suo,*/*/bin/*,*/*/obj/*"

[Get started with Fossil, an alternative to Git | Opensource.com](https://opensource.com/article/20/11/fossil)


[Fossil: Help: clone](https://fossil-scm.org/home/help/clone)

    fossil clone ?OPTIONS? URI ?FILENAME?


# Compare with Git

[Fossil: Fossil Versus Git](https://www.fossil-scm.org/home/doc/trunk/www/fossil-v-git.wiki)

    but with Fossil they are integrated into the design, to the point that it approximates "GitHub-in-a-box."

[Fossil Versus Git | Lobsters](https://lobste.rs/s/e3blgf/fossil_versus_git)

[Fossil versus Git](https://brianlovin.com/hn/31696940)


## Same as Git for preserving timestamps

[Re: [fossil-users] Can Fossil preserve file timestamps when opening a repository ?](https://www.mail-archive.com/fossil-users@lists.fossil-scm.org/msg25213.html)

    CVS distinguishes between initial checkout and update.  For the former,
    it will use the commit time of each revision as mtime, for the latter it
    will use the current time. That works well enough.
    
