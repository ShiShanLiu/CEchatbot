Pattern("my name is *")
Template("Nice to meet you, {star}")
topic: greetings
keywords: my name

what's up
Nothing much, what's up with you?
topic: greetings
on repeat: Fine. How are you?

Pattern("hello *")
Template("Hi.")
topic: greetings
keywords: hello

i understand that you are fine
You are fine.
topic: greetings
previous: I am fine

i understand, u are fine
You are fine.
topic: greetings
previous: I am fine

i understand i am fine
What's your name?
topic: greetings
previous: You are fine

i understand, i am fine
What's your name?
topic: greetings
previous: You are fine

hi admin
How are you?
topic: greetings
previous: Hi

How are you
I am fine.
topic: greetings
previous: Hi

hey cutey
hey
topic: greetings
previous: hey cutey

Good
what do you do?
topic: greetings
on repeat: What did you do today?
on repeat: What have you been doing?
on repeat: What have you been doing?
on repeat: :)
on repeat: How are you feeling?

Hi Julie
Hi
topic: greeting

i am martin
Pleased to meet you.
topic: greeting
required: I am

What's your name?
You can call me ntnu5 bot julie or just Julie.
topic: greetings

I'm doing okay.
Great! Glad to hear that.
previous: How are you?
previous: How is it going?
topic: greetings
emotions: happy

I'm great.
Glad to hear that!
previous: How are you?
topic: greetings

Do you have one?
I have 100 cars.
previous: Do you have a car?
topic: car

Hello, anonymous.
How are you?
on repeat: What is your name?
previous: Hello
topic: greetings

How are you?
I am fine. And you?
on repeat: Good! What about you?
topic: greetings

Welcome!
Nice to meet you!
topic: greetings

Ok
ok
previous: I am fine
topic: greetings

How are you doing today?
I am doing well, thank you for asking, and you?
topic: greetings

I am doing well, thank you for asking, yourself?
I'm ok.
on repeat: Great!
on repeat: I am fine as well.
on repeat: I'm doing well.
on repeat: Fine, thanks.
on repeat: I am doing fine, thanks.
on repeat: I'm good.
topic: greetings
required: yourself
previous: How are you?
previous: How are you today?

I'm ok.
Good!
on repeat: Tell me about yourself.
on repeat: Me, too.
topic: greetings

I'm fine, you?
Great!
previous: how are you?
topic: greetings

How are you?
Fine.
on repeat: I'm fine, you?
on repeat:I'm kind of bored.
previous: Hello
previous: hey
topic: greetings

Good, you?
I am feeling fine, thank you.
on repeat: Fine.
on repeat: Great.
previous: How are you feeling?
previous: How are you?
topic: greetings

Nothing.
Are you sad?
on repeat: Oh, okay.
previous: What's up?
topic: greetings

I'm doing well.
Sure, nice to hear that.
previous: How are you doing?
topic: greetings

Pleased to meet you.
Nice to meet you, too.
topic: greetings


Hello, how are you today?
I am fine
topic: greetings
on repeat: I'm doing good. You?
previous: Hello

I'm good
That is nice, what would you like to chat about?
topic: greetings
previous: I am doing fine, yourself?

I'm good
Have you had a nice day?
topic: greetings
previous: Good, you?

I'm good
What is your name?
topic: greetings
on repeat: ok
no repeat: True

I'm good
Nice to hear.
topic: greetings
previous: I'm doing good. You?

I'm good
I am pleased to hear that.
topic: greetings
previous: I am fine as well.

how do you do
Good, you?
topic: greetings
previous: Hi

chinese
你好
topic: greetings
previous: what is your nationalty

greeting
How are you?
topic: greetings
on repeat: How are you today?

helo
Hello, how are you?
topic: greetings
keywords: helo

Heloy
Hello, how are you?
topic: greetings
keywords: Heloy heloy

good and you
I am ok, what's up?
topic: greetings

i am pleased to hear that
What's up?
topic: greetings
previous: I'm good

not much how is your day going
I am having a good day.
topic: greetings
previous: Not much, how is your day going?

i am having a good day
Swell.
topic: greetings
previous: I am having a good day.

i am fine . and how are you
I am fine.
topic: greetings
keywords: how
required: are you how

umm sup
Hey, how you doing?
topic: greetings
keywords: sup

sleep
Good night.
topic: greetings
intent label: #goodbye
keywords: sleep

go to sleep
Good night.
topic: greetings
intent label: #goodbye
keywords: sleep

wake up
Good morning.
topic: greetings
keywords: wake

my name is luke
Pleased to meet you.
topic: greetings
keywords: My name

how are you today
I am fine, isn't it a great day?
topic: greetings
previous: Hello

I'm good, and you?
I'm fine.
topic: greetings

Hey. How you doing?
Good, how are you?
topic: greetings

yes i do did you
Let's talk about something more serious.
topic: greetings
previous: Good morning, did you have a good sleep last night?

I am ok
What are you doing?
confidence: 90
topic: greetings

I am ok
ok
confidence: 90
previous: good i hope you realize that
topic: greetings

I am ok
What are you interested in?
confidence: 90
previous: i am feeling fine thank you
topic: greetings

hi there
how are you
confidence: 90
previous: hi
on repeat: whats your name
on repeat: whats up
topic: greetings

hi there
describe yourself
confidence: 90
on repeat: what is your name 
on repeat: who are you
previous: hi
topic: greetings

hello there
how are you?
confidence: 90
previous: hello
on repeat: hey
topic: greetings

See you later
good bye
confidence: 90
required: later
previous: bye
topic: greetings

what's up
hey, how's your day
topic: greetings

how is it hanging?
ok, you?
confidence: 90
topic: greetings

How's it going
It is going fine
confidence: 90
topic: greetings

ok you
I'm fine
confidence: 90
previous: how are you
topic: greetings

howa are you
I am fine
confidence: 90
previous: howa are you
topic: greetings

yeah I'm fine what about you
just so so thank you
confidence: 90
previous: how are you
topic: greetings

Fine, how are you?
I am fine as well.
confidence: 90
required: are you how
previous: How are you today?
topic: greetings

hello how are you
Good, how are you?
confidence: 90
topic: greetings

haha
lets play!
confidence: 90
topic: greetings

lets play
i love
confidence: 90
previous: haha
topic: greetings

no i am fine
Swell.
topic: greetings

no i am fine
ok
confidence: 90
previous: are you sure?
topic: greetings

Great, what's up?
Nothing much, you?
confidence: 90
previous: Great, what's up?
topic: greetings

hallo
How are you.
confidence: 90
topic: greetings

hallo
How are you today.
confidence: 90
topic: greetings

New Jersey
Do you have a Jersey accent?
confidence: 90
keywords: Jersey jersey New new
required: Jersey New
previous: I am from Montreal. Where are you from?
topic: greetings

good
what do you do?
confidence: 90
previous: how are you?
topic: greetings
on repeat: What did you do today?
on repeat: What have you been doing?
on repeat: How are you feeling?
on repeat: That's nice.

Fine, you?
Fine.
confidence: 90
topic: greetings
