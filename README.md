# The Worm

:bug:

*About the Worm*

The [Worm](http://theworm.herokuapp.com/) is a real-time audience sentiment feedback tool for the classroom and other public speaking scenarios.
It can be set up in a matter of seconds and track any sentiment the presenter can think of.

Anyone can create a profile and then set up a future presentation session. Once a presentation has been created,
the presenter can send their audience a special code to join and vote.
People with a code can enter it on the homepage, to access their voting page. They can vote as many times they want during a session.
The presenter can then track the sentiment of their audience by viewing a live feed.

![Screenshot Home Page](https://github.com/ajshopov/worm/blob/master/app/assets/images/Screen%20Shot%202018-02-09%20at%202.03.10%20pm.png?raw=true)

*About the Team*

Ethan "css is hard".
Alex is a gitlord and Worm enthusiast.
Karen is a Belgian kiwi aspiring code ninja who started coding in Basic on her dad's Commodore 128.

*Technologies, frameworks and libraries used*

Ruby, Rails, JavaScript, Chart.js, PostgreSQL, Heroku and a whole lot of Git.

*Future enhancements*

* uniquely identify voters on the server side for reporting purposes
* limit voting frequency per user (to be determined by presenter)
* prevent users voting from a region different from where the presentation is being held (option available to be used or not by presenter)
* show historical graphs and more detailed statistics on dashboard page
* improvements to voting algorithm to smooth chart

*Lessons learned*

* Github workflow when working in a team (and avoiding a lot of conflicts)
* using inbuilt Rails smarts (such as UUID, flash hash) and learning about its peculiarities (like how to add an image)
