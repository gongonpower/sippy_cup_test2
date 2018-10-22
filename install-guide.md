#Installation

OS: ubuntu 16

## Step 1 : install SIPp
refer this link : (http://techvick.blogspot.com/2014/09/how-to-intsall-sipp-on-ubuntu.html)
should use this config " ./configure --with-pcap"

## Step 2 : install ruby using nvm
refer this link : (sippy_cu://gorails.com/setup/ubuntu/16.04) bys using rvm method to install ruby

## Step 3: install sippy_cup
refer this link : (https://github.com/mojolingo/sippy_cup) by using gem install sippy_cup

## Step 4 : fix the send dtmf problem
refere this link : (https://github.com/mojolingo/sippy_cup/pull/99)
according to the commit change, update the below two files with the commit code.
~/.rvm/gems/ruby-2.5.3/gems/sippy_cup-0.7.2/lib/sippy_cup/media.rb
~/.rvm/gems/ruby-2.5.3/gems/sippy_cup-0.7.2/spec/sippy_cup/media_spec.rb

## generate scenario xml file and run the load test with the scenario xml.
1. refer mytest1.yml and make necessary change.
1. run ./generate.sh
1. refer the run.sh: change the first ip as your local test vm ip (the ubuntu 16), change the last ip as your ivr freeswitch ip, change "-s 1235" to your target extention number to dial in,  change the concurrrent connection (30) parameter and the total test times (100) as you need
1. run ./run.sh

## know issue:
1. the maximum send-digits is only 7 digits. if longer than 7, the sippy_cup will ignore the extra digits.





