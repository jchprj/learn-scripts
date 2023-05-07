



[Generating a new GPG key - GitHub Docs](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)

    gpg --full-generate-key
    gpg --list-secret-keys
    gpg --list-secret-keys user@example.com
    gpg --armor --export YOUR_ID_HERE

[Telling Git about your signing key - GitHub Docs](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)



[GPG: Extract private key and import on different machine - makandra orga](https://makandracards.com/makandra-orga/37763-gpg-extract-private-key-and-import-on-different-machine)

    gpg --list-secret-keys
    gpg --list-secret-keys user@example.com
    gpg --export-secret-keys YOUR_ID_HERE > private.key
    gpg --import private.key