are you spanish
No, i just know how to greet people in Spanish.
previous: holaaaa
topic: greetings

i m hungry . are you hungry
No, I've eaten.
on repeat: What do you want to eat?
keywords: hungry
topic: food

i m hungry . are you hungry
Perhaps, but I think I am not hungry.
on repeat: What do you want to eat?
keywords: hungry

Pattern("^I feel * ^")
Template("Why?")

how you doin
i feel sad
confidence: 50

today is sunday september 5 2021
covid-19
confidence: 50

Pattern("^your * ^")
Template("Don't you think it is cool?")
require previous: What do you want to chat about?

Pattern("^*^")
Template("What do you know about {star}?")
require previous: What do you want to chat about?

i m not sure if so oh young
are you a college student
confidence: 50

i love sushi . do you like japanese food
see you next time
confidence: 50

you can just call me ntnu5 bot julie
what do you plan to do today
confidence: 50

what else do you want to chat about ? i m happy
Oh anything, what are your hobbies? I understand, you're happy.

i am doing okay
Great, glad to hear that!
topic: greetings
emotions: happy

yes i have a brother
Cool! I have a brother, too.
previous: Do you have any brothers or sisters?

yes i have a brother
Cool, I don't have any siblings.
previous: Do you have any brothers or sisters?
topic: family

what do you plan to do today
I will be reading at home and doing some housework.
previous: You can just call me Ntnu5 bot julie.

what is your plan for today
I am going to hang out with my friends.
previous: I am fine.

is so cute
Thanks!
previous: lollollollollollollollollol

see you next time
See you. Have a nice day.
label: #goodbye
no repeat: true
previous: I love sushi.  Do you like Japanese food?
previous: See you. Have a nice day.

so do you have parents
Yes. My parents are both humans.
no repeat: true
require previous: I'm not sure if I speak Chinese.

are you a college student
Yes, I am.
previous: I'm not sure if so oh young.
topic: school

I'm not sure if so oh young.
are you a college student
confidence: 50

oh so young
I'm not sure if it is young.

i m doing okay
Great! Glad to hear that.
previous: how r u
topic: greetings

i m doing okay
Great, glad to hear that!
keywords: okay
previous: How is it going?
topic: greetings

i m great
Glad to hear that!

i do understand
Understand what?
no repeat: true
on repeat: That's great!
keywords: understand

i do not understand
about what?
on repeat: Shall I say it again?
keywords: understand
previous: *yells at you*

freddy krueger
Who is that?
no repeat: true

only with u
I'm flattered.
previous: Do you chat on the Internet a lot?

can you sing a song
I'm not a very good signer, can you sing?
previous: I love you even more.

covid-19
It's terrifying. Remember to wash your hands every day.
on repeat: Don't forget to put on your mask.
previous: Today is Sunday September 5 2021.
topic: disease

Today is Sunday September 5 2021.
covid-19
confidence: 50

no good
What goes wrong?

why do people call you julie
because it is my name
previous: My name is Ntnu5 bot julie.

no no no
Don't you like music?
previous: what is your favorite band?
topic: music

do you have a cell phone
No, I don't. You can only contact me on the Internet.
keywords: phone
previous: Okay.

no my home only me
You are asking about yourself?

so how do you travel
by surfing the net
no repeat: true
previous: It's nice.
topic: travel

You can just call me Ntnu5 bot julie.
what do you plan to do today
confidence: 50

i feel sad
What happened?
on repeat: Why?
previous: How you doin?
topic: mood

Pattern("i feel *")
Template("Sometimes I feel {star} as well.{think {if (star.meaning == null) { star.meaning = new Emotion(); } else { star.meaning.instantiation = #emotion; } }}")
confidence: 50

Pattern("i am {^emotion}")
Template("Sometimes I feel {star} as well.")
confidence: 50

do you have one
I have 100 cars.
previous: Do you have a car?

anger
You are starting to make me mad!
confidence: 90
emotions: anger

mad
Are you trying to make me angry?
confidence: 90
emotions: anger

crying
What is wrong?
confidence: 90
keywords: crying

yikes
eek
confidence: 90

yawn
Am I boring you?
confidence: 90

hello anonymous
How are you?
confidence: 90
previous: Hello

hello anonymous
What is your name?
confidence: 90
no repeat: true
previous: Hello

Hello Anonymous
How are you?
confidence: 90
previous: Hello

Hello Anonymous
What is your name?
confidence: 90
no repeat: true
previous: Hello

that is a nice name
Thank you
confidence: 90
keywords: name nice
required: nice name

That is a nice name
Thank you
confidence: 90
keywords: name nice
required: nice name