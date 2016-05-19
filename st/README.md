
# 1 More Language in 12+C More Minutes

I have selected Smalltalk as a complementary language for SLINM for a few reasons.
First, the fact that you program in a live environment makes it very interesting and distinct.
Equally interesting is its elegant and simple syntax, and I especially wanted to show its keyword syntax, which leads naturally to very DSL'ish libraries.
Somewhat unexpected to me, one-based collection indexing is a big deal to some people.

If you want to have a look at the the sources, without setting up a Smalltalk environment, take a look at the `BowlingGame.st` and `BowlingGameTest.st` files.

All code is contained in a single package `BowlingGame`.
Each successive step of the Bowling Game Kata is represented by an incremented package version.
Packages can be loaded using Monticello.
It has been tested on Pharo 3.0.

To align with the SLINM presentation, we would like to automatically run tests as code changes.
The Autotest package does just this.  To enable Autotest, install the package:

```
Gofer it
    smalltalkhubUser: 'LaurentLaffont' project: 'Autotest';
    configuration;
    load.
(Smalltalk at: #ConfigurationOfAutotest) load.
```
 
Next, go into the settings browser, search for Autotest and enable it.
