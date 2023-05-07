[Ammonite](https://ammonite.io/)

    $ sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/com-lihaoyi/Ammonite/releases/download/2.5.4/2.13-2.5.4) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm


[import $ivy](https://ammonite.io/#import$ivy)

    Note that the different portions of the $ivy import are in a org::library:version format; the :: is used to represent Scala dependencies, similar to %% in SBT's dependency syntax. If you want Java dependencies, you can load them using the org:library:version format

    import $ivy.`org.scalaz::scalaz-core:7.2.27`, scalaz._, Scalaz._
    import $ivy.`com.google.guava:guava:18.0`, com.google.common.collect._


[Watch and Reload](https://ammonite.io/#WatchandReload)

    amm -w foo.sc