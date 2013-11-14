# Ruby Golf Hamburg, 13.11.2013

We had the second Ruby Golf competition this year. Our goal was to compute a score for each hole and provide a web site to check live rankings. See [axelerator/ruby_caddy](https://github.com/axelerator/ruby_caddy) for the Rails app used to compute the scores and display the ranking.

## Ranking

An honorable mention of the most effective solution in the category "Gaming The System" goes to team [Peter Schröder](https://github.com/phoet/ruby_golf_hamburg_2013.git) who put their code inside the method signature and thus managed to get down to 1 character per method most of the time. Great idea, but too far off for being counted as a real implementation. Also because it mainly was an input/output mapping, no algorithmic implementation. So we had to disqualify this entry.

1. [Tammo & Timo](https://github.com/tbk303/ruby_golf_hamburg_2013) (Also "Gaming The System" since all code was [converted](https://github.com/tbk303/ruby_golf_hamburg_2013/blob/master/golf_compactor.rb) to whitespace which could be evaluated on runtime. Since all whitespace is eliminated for counting, the solutions all have the same length which is the code for evaluating the whitespace. Cheaty, but still this implemented the tasks we asked for.)
1. [Team Schröder 2](https://github.com/colszowka/ruby_golf_hamburg_2013) (An alter ego of team [Peter Schröder](https://github.com/phoet/ruby_golf_hamburg_2013) providing their solution before they became too creative.)
1. [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013)
1. [Marc](https://github.com/masche842/ruby_golf_hamburg_2013)
1. [anton](https://github.com/antulik/ruby_golf_hamburg_2013)
1. [Daniel](https://github.com/croaker/ruby_golf_hamburg_2013)
1. [Thomas von Deyen](https://github.com/tvdeyen/ruby_golf_hamburg_2013)
1. [Ben](https://github.com/Salzig/ruby_golf_hamburg_2013)
1. [Tim](https://github.com/toadle/ruby_golf_hamburg_2013)

If you check [ruby_golf.rb](https://github.com/thomasjachmann/ruby_golf_hamburg_2013/blob/2cf2b59857e522a7507dc62a511e4c4d7200a03e/ruby_golf.rb), you'll find a compilation of the shortest non cheating solutions from all golfers:

* Hole 1: 33 characters from [Daniel](https://github.com/croaker/ruby_golf_hamburg_2013/blob/a44f291d8f678b12535a647aceaa0c18c2ce5b2b/ruby_golf.rb#L10)
* Hole 2: 43 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L22)
* Hole 3: 62 characters from [Daniel](https://github.com/croaker/ruby_golf_hamburg_2013/blob/a44f291d8f678b12535a647aceaa0c18c2ce5b2b/ruby_golf.rb#L34)
* Hole 4: 98 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L49)
* Hole 5: 24 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L65) and [Thomas von Deyen](https://github.com/tvdeyen/ruby_golf_hamburg_2013/blob/47068ee41f33ce7468825a816abab0962ee35ac3/ruby_golf.rb#L58)
* Hole 6: 117 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L82)
* Hole 7: 110 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L100)
* Hold 8: 138 characters from [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013/blob/d0cc916b7fda5aaf230ac0dc7c1744d25b0fd666/ruby_golf.rb#L120)

Let me say that without any cheating, [Jan](https://github.com/halfbyte/ruby_golf_hamburg_2013) probably would have won.

# Learnings

* Don't exclude whitespace completely, maybe just the initial indentation.
* Don't ignore method signature in counting characters.
* Test with more examples to avoid quickfix solutions not implementing the proper algorithm and prevent simple input/output mappings instead of real code.
* Check code during competition and give hints what to avoid.
* Try to even out team sizes since bigger teams definitely have an advantage.

# Competition

To start coding on this challenge, first install all gems:

```
bundle install
```

Then, execute the test using guard:

```
bundle exec guard
```

Each time you change ruby_golf.rb, the tests are re-run and give you the state
of your implementation and code metrics used for ranking.

# Rules

* only touch ```ruby_golf.rb```
* implement your solution within the pre-defined module methods
* only non-whitespace characters within the method body are counted, no need to
  optimize the method definition
* you can implement helper methods within the module, but be aware that they are
  counted towards the size of each method they're used in
* stick to what stdlib gives you
* DON'T use custom gems
* DON'T go and annoy the organizers by being clever and exploiting their code
