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